#define _CRT_SECURE_NO_WARNINGS 1
#include<iostream>
#include<unordered_map>
#include<queue>
#include <iomanip> 
#include <cstdlib> // 用于随机数生成
#include <ctime>   //生成随机数种子
#include<list>
using namespace std;
const int PAGE_SIZE = pow(2, 12);
const int MEMORY_SIZE = 4;// 物理内存大小（帧数）
const int NUM_DISK_BLOCKS = 1024;

// 页表项结构体
struct PageTable {
    int frameNumber;  // 帧号(内存块号)
    bool valid;       // 是否有效
    bool dirty;       //修改位
    PageTable() : frameNumber(-1), valid(false), dirty(false) {}
};
// 进程类
class Process {
public:
    int pid;
    vector<PageTable> pageTable;// 页表，含有页号到帧号的映射
    Process() {
    }

    Process(int id) : pid(id) {
    }
    //进程初始化页表
    void initPageTable(int N) {
        pageTable.resize(N);
    }

    int getPageTableSize() {
        return pageTable.size();
    }

};

class  Memory {
public:
    int begin_address;
    vector<bool> isFree; // 内存块空闲状态
    int Memory_Size;
    Memory(int frameCount,int begin) {
        begin_address = begin;
        isFree.resize(frameCount, true); // 初始化所有内存块为空闲
        this->Memory_Size = frameCount;
    }
    int allocateFrame() {
        for (int i = 0; i < isFree.size(); ++i) {
            if (isFree[i]) {
                isFree[i] = false;
                return i; // 返回分配的物理块号
            }
        }
        return -1; // 没有空闲的物理块
    }
    void freeFrame(int frameNumber) {
        if (frameNumber >= 0 && frameNumber < isFree.size()) {
            isFree[frameNumber] = true;
        }
    }
    int translate_address(int block_number,int offset) {
        return block_number * PAGE_SIZE + offset;
    }
    
};
class DiskManager {
private:

    vector<bool> diskBitmap; // 磁盘块位图，标记磁盘块的使用情况

public:
    DiskManager(int diskcount) : diskBitmap(diskcount, false) {}

    int allocateDiskBlock() {
        // 查找空闲的磁盘块
        for (int i = 0; i < NUM_DISK_BLOCKS; ++i) {
            if (!diskBitmap[i]) {
                diskBitmap[i] = true; // 标记为已分配
                return i; // 返回磁盘块号
            }
        }
        return -1; // 没有空闲的磁盘块
    }

    void freeDiskBlock(int blockNumber) {
        if (blockNumber >= 0 && blockNumber < NUM_DISK_BLOCKS) {
            diskBitmap[blockNumber] = false; // 标记为未分配
        }
    }
};

//地址转换函数
int Translate_Address(Process*& p, Memory*& memory,int virtual_address) {
    int Page_Number = virtual_address / PAGE_SIZE;
    int offset = virtual_address % PAGE_SIZE;
    int Block_Number = p->pageTable[Page_Number].frameNumber;
    if (Block_Number != -1) return memory->begin_address + Block_Number * PAGE_SIZE + offset;
    else return -1;
}


void printPageTable(Process*& p) {
    cout << setw(10) << "页号"
        << setw(10) << "内存块号"
        << setw(10) << "有效位"
        << setw(10) << "修改位";
    cout << endl;
    int count = 0;
    for (auto item : p->pageTable) {
        cout << dec<<setw(10) << count
            << setw(10) << item.frameNumber
            << setw(10) << item.valid
            << setw(10) << item.dirty;
        cout << endl;
        count++;
    }
    cout << endl;

}
void printQueue(queue<int> ready_queue) {
    while (!ready_queue.empty()) {
        int p = ready_queue.front();
        cout << " " << p;
        ready_queue.pop();
    }
}
void printVector(vector<int> vec) {
    for (auto i : vec) {
        cout << i << " ";
    }
}
void printClockVector(vector<int> vec, vector<int> clockQueue,unordered_map<int, int> clockMap,int clockHand) {
    for (int i = 0; i < vec.size();i++) {
        cout << vec[i];
        if (clockMap[clockQueue[i]] == 1)cout << "*";
        cout << " ";
    }
    cout << "指针位置为：" << clockHand<<" ";
}
void printList(list<int> list) {
    for (auto i : list) {
        cout << i << " ";
    }
}
void FIFO(Process*& p,Memory *& memory, vector<int> V_accessSequeue) {
    int cnt = 0;  //计数缺页中断次数
    vector<int> accessSequeue;
    for (auto it : V_accessSequeue) {
        accessSequeue.push_back(it / PAGE_SIZE);
    }
    cout << "---------------------------------------FIFO---------------------------------------" << endl;
    cout << "内存起始地址为：0x" << hex << memory->begin_address;
    cout << "访问序列：";
    printVector(accessSequeue); cout << endl;
    queue<int> blockQueue;
    queue<int> PageQueue;
    for (int i = 0; i < accessSequeue.size(); i++) {
        cout << "虚拟地址：0x" << hex<< V_accessSequeue[i] << "\t";
        cout << "访问" << accessSequeue[i] << "虚拟页号\t";
        int PageNumber = accessSequeue[i];
        if (PageNumber < p->getPageTableSize()) {
            //查页表
            int frameNumber = p->pageTable[PageNumber].frameNumber;
            bool isvalid = p->pageTable[PageNumber].valid;
            if (frameNumber != -1 && isvalid == true) {
                //访问frameNumber有效,命中
                cout << "命中" << PageNumber << "号页\t";
                cout << "对应物理地址为：0x"  << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
                p->pageTable[PageNumber].dirty = true;
            }  
            else {
                //如果没命中，分配一个块出来
                int blockNumber = memory->allocateFrame();
                if (blockNumber == -1) {
                    cout << "磁盘块已满" << endl;
                    return;
                }
                else {
                    cnt++;
                    int mem_size = blockQueue.size();
                    if (mem_size < MEMORY_SIZE) {
                        p->pageTable[PageNumber].frameNumber = blockNumber;
                        p->pageTable[PageNumber].valid = true;
                        blockQueue.push(blockNumber);
                        PageQueue.push(PageNumber);
                        cout << "\t 内存块分配（页号）：";
                        printQueue(PageQueue); cout << endl;
                        cout << "未命中，分配" << blockNumber << "号内存块";
                        cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;;

                    }
                    else {
                        //内存已满,从内存中选出一个换出
                        int out_number = blockQueue.front();
                        blockQueue.pop();
                        PageQueue.push(PageNumber);
                        int Page_number = PageQueue.front();
                        PageQueue.pop();
                        memory->freeFrame(out_number);
                        blockNumber = memory->allocateFrame();
                        //如果有修改就写回
                        if (p->pageTable[Page_number].dirty) cout << "未命中，有修改，将" << out_number << "号内存块换出，写回磁盘";
                        else  cout << "未命中，无修改，将" << out_number << "号内存块换出；";
                        blockQueue.push(blockNumber);
                        //从页表中删除
                        for (auto& item : p->pageTable) {
                            if (item.frameNumber == out_number) {
                                item.frameNumber = -1;
                                item.valid = false;
                                item.dirty = false;
                            }
                        }
                        p->pageTable[PageNumber].frameNumber = blockNumber;
                        p->pageTable[PageNumber].valid = true;
                        cout << "\t 内存块分配（页号）："; printQueue(PageQueue); cout << endl;
                        cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;;
                    }
                }
            }

        }
        else {
            cout << "页表越界" << endl;
        }
   //     printPageTable(p);
    }
    cout << "\t缺页中断率为：" <<dec<< cnt * 100 / V_accessSequeue.size() << "%" << endl;
}

void RANDOM(Process*& p, Memory*& memory, vector<int> V_accessSequeue) {
    int cnt = 0;
    vector<int> accessSequeue;
    for (auto it : V_accessSequeue) {
        accessSequeue.push_back(it / PAGE_SIZE);
    }
    cout << "---------------------------------------RANDOM---------------------------------------" << endl;
    cout << "访问序列：";
    printVector(accessSequeue); cout << endl;
    vector<int> blockVector;
    vector<int> PageVector;
    srand((unsigned)time(NULL));
    for (int i = 0; i < accessSequeue.size(); i++) {
        cout << "虚拟地址：0x" << hex << V_accessSequeue[i] << "\t";
        cout << "访问" << accessSequeue[i] << "虚拟页号\t";
        int PageNumber = accessSequeue[i];
        if (PageNumber < p->getPageTableSize()) {
            //查页表
            int frameNumber = p->pageTable[PageNumber].frameNumber;
            bool isvalid = p->pageTable[PageNumber].valid;
            if (frameNumber != -1 && isvalid == true) {
                //访问frameNumber有效,命中
                cout << "命中" << PageNumber << "号页" << endl;
                p->pageTable[PageNumber].dirty = true;
                cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
            }
            else {
                cnt++;
                //如果没命中，分配一个块出来
                int blockNumber = memory->allocateFrame();
                if (blockNumber == -1) {
                    cout << "磁盘块已满" << endl;
                    return;
                }
                else {
                    int mem_size = blockVector.size();
                    if (mem_size < MEMORY_SIZE) {
                        p->pageTable[PageNumber].frameNumber = blockNumber;
                        p->pageTable[PageNumber].valid = true;
                        blockVector.push_back(blockNumber);
                        cout << "未命中，放入" << blockNumber << "号物理块";
                        cout << "\t 内存块分配（页号）：";   printVector(PageVector); cout << endl;
                        cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
                        PageVector.push_back(PageNumber);
                    }
                    else {
                        //内存已满,从内存中选出一个换出
                        int randomIndex = rand() % MEMORY_SIZE;
                        int out_number = blockVector[randomIndex];
                        memory->freeFrame(out_number);
                        blockNumber = memory->allocateFrame();
                        if (p->pageTable[PageNumber].dirty) cout << "未命中，有修改，将" << out_number << "号内存块换出，写回磁盘";
                        else  cout << "未命中，无修改，将" << out_number << "号内存块换出；";
                        //从页表中删除
                        int pagenum = -1;
                        for (auto it = p->pageTable.begin(); it != p->pageTable.end(); ++it) {
                            if (it->frameNumber == out_number) {
                                it->frameNumber = -1;
                                it->valid = false;
                                pagenum = distance(p->pageTable.begin(), it);
                                
                            }
                        }
                        p->pageTable[PageNumber].frameNumber = blockNumber;
                        p->pageTable[PageNumber].valid = true;

                        blockVector.erase(blockVector.begin() + randomIndex);
                        blockVector.push_back(blockNumber);
                        for (auto& i : PageVector) {
                            if (i == pagenum) {
                                i = PageNumber;
                            }
                        }
                        cout << "\t 内存块分配（页号）：";   printVector(PageVector); cout << endl;
                        cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
                    }
                }
            }

        }
        else {
            cout << "页表越界" << endl;
        }
    //    printPageTable(p);

    }
    cout << "\t缺页中断率为：" << dec << cnt * 100 / V_accessSequeue.size() << "%" << endl;
}



void LRU(Process*& p, Memory*& memory, vector<int> V_accessSequeue) {
    int cnt = 0;
    vector<int> accessSequeue;
    for (auto it : V_accessSequeue) {
        accessSequeue.push_back(it / PAGE_SIZE);
    }
    unordered_map<int, int> lru; // 块号 -> 上次到达的时间
    cout << "---------------------------------------LRU---------------------------------------" << endl;

    cout << "访问序列：";
    printVector(accessSequeue);
    cout << endl;
    vector<int> blockVector;
    list<int> Pagelist;
    for (int i = 0; i < accessSequeue.size(); i++) {
        cout << "虚拟地址：0x" << hex << V_accessSequeue[i] << "\t";
        cout << "访问" << accessSequeue[i] << "虚拟页号\t";
        int PageNumber = accessSequeue[i];
        if (PageNumber >= p->getPageTableSize()) {
            cout << "页表越界" << endl;
            continue;
        }
        int frameNumber = p->pageTable[PageNumber].frameNumber;
        bool isvalid = p->pageTable[PageNumber].valid;

        if (frameNumber != -1 && isvalid) {
            // Page hit
            lru[frameNumber] = i;
            cout << "命中" << PageNumber << "号页\t 替换队列：";
            Pagelist.remove(PageNumber);
            Pagelist.push_back(PageNumber);
            p->pageTable[PageNumber].dirty = true;
            cout << "\t 内存块分配（页号）：";    printList(Pagelist);; cout << endl;
            cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
        }
        else {
            cnt++;
            int blockNumber = memory->allocateFrame();
            if (blockNumber == -1) {
                cout << "磁盘块已满" << endl;
                return;
            }

            if (blockVector.size() >= MEMORY_SIZE) {
                int minSecond = INT_MAX;
                int out_number = -1;
                for (const auto& pair : lru) {
                    if (pair.second < minSecond) {
                        minSecond = pair.second;
                        out_number = pair.first;
                    }
                }

                memory->freeFrame(out_number);
                blockNumber = memory->allocateFrame();
                if (p->pageTable[PageNumber].dirty) cout << "未命中，有修改，将" << out_number << "号内存块换出，写回磁盘";
                else  cout << "未命中，无修改，将" << out_number << "号内存块换出；";

                for (auto& page : p->pageTable) {
                    if (page.frameNumber == out_number) {
                        page.frameNumber = -1;
                        page.valid = false;
                        Pagelist.remove(&page - &p->pageTable[0]);
                        break;
                    }
                }

                lru.erase(out_number);
            }
            else {

                blockVector.push_back(blockNumber);
                cout << "未命中，放入" << blockNumber << "号物理块";
            }

            p->pageTable[PageNumber].frameNumber = blockNumber;
            p->pageTable[PageNumber].valid = true;
            lru[blockNumber] = i;
            Pagelist.push_back(PageNumber);
            cout << "\t 内存块分配（页号）：";    printList(Pagelist);; cout << endl;
            cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
        }
        cout << endl;
     //   printPageTable(p);
    }
    cout << "\t缺页中断率为：" << dec << cnt * 100 / V_accessSequeue.size() << "%" << endl;
}

void CLOCK(Process*& p, Memory*& memory, vector<int> V_accessSequeue) {
    int cnt = 0;
    vector<int> accessSequeue;
    for (auto it : V_accessSequeue) {
        accessSequeue.push_back(it / PAGE_SIZE);
    }
    unordered_map<int, int> clockMap; // {块号, 使用位}
    vector<int> clockQueue;
    vector<int> pageQueue;
    int clockHand = 0;
    cout << "---------------------------------------CLOCK---------------------------------------" << endl;
    cout << "访问序列：";
    printVector(accessSequeue); cout << endl;
    for (int i = 0; i < accessSequeue.size(); i++) {
        int PageNumber = accessSequeue[i];
        cout << "虚拟地址：0x" << hex << V_accessSequeue[i] << "\t";
        cout << "访问 " << PageNumber << " 虚拟页号\t";
        if (PageNumber < p->getPageTableSize()) {
            int frameNumber = p->pageTable[PageNumber].frameNumber;
            bool isValid = p->pageTable[PageNumber].valid;
            if (frameNumber != -1 && isValid) {
                // 页面命中
                clockMap[frameNumber] = 1;
                p->pageTable[PageNumber].dirty = true;
                cout << "命中 " << PageNumber << " 号页";
                cout << "\t 内存块分配（页号）：";    printClockVector(pageQueue, clockQueue, clockMap, clockHand); cout << endl;
                cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;

            }
            else {
                cnt++;
                // 页面不在内存中
                int blockNumber = memory->allocateFrame();
                if (blockNumber == -1) {
                    cout << "磁盘块已满" << endl;
                    return;
                }
                else {
                    int mem_size = pageQueue.size();
                    if (mem_size < MEMORY_SIZE) {
                        p->pageTable[PageNumber].frameNumber = blockNumber;
                        p->pageTable[PageNumber].valid = true;
                        clockQueue.push_back(blockNumber);
                        pageQueue.push_back(PageNumber);
                        clockMap[blockNumber] = 1;
                        clockHand = (clockHand + 1) % MEMORY_SIZE;
                        cout << "未命中，放入" << blockNumber << "号物理块";
                        cout << "\t 内存块分配（页号）：";    printClockVector(pageQueue, clockQueue,clockMap, clockHand); cout << endl;
                        cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
                    }
                    else {
                        while (true) {
                            int out_number = clockQueue[clockHand];
                            if (clockMap[out_number] == 0) {//如果没有机会
                                memory->freeFrame(out_number);
                                blockNumber = memory->allocateFrame();
                                clockMap.erase(out_number);
                                for (auto& page : p->pageTable) {
                                    if (page.frameNumber == out_number) {
                                        page.frameNumber = -1;
                                        page.valid = false;
                                        break;
                                    }
                                }
                                clockQueue[clockHand] = blockNumber;
                                pageQueue[clockHand] = PageNumber;
                                clockMap[blockNumber] = 1;
                                p->pageTable[PageNumber].frameNumber = blockNumber;
                                p->pageTable[PageNumber].valid = true;
                                clockHand = (clockHand + 1) % MEMORY_SIZE;
                                if (p->pageTable[PageNumber].dirty) cout << "未命中，有修改，将" << out_number << "号内存块换出，写回磁盘";
                                else  cout << "未命中，无修改，将" << out_number << "号内存块换出；";
                                cout << "\t 内存块分配（页号）：";    printClockVector(pageQueue, clockQueue, clockMap, clockHand); cout << endl;
                                cout << "对应物理地址为：0x" << hex << Translate_Address(p, memory, V_accessSequeue[i]) << endl;
                                cout << endl;
                                break;
                            }
                            else {
                                //有机会则置0
                                clockMap[out_number] = 0;
                                clockHand = (clockHand + 1) % MEMORY_SIZE;
                            }
                        }
                    }
                }
            }
        }
        else {
            cout << "页表越界" << endl;
        }
     //   printPageTable(p);

    }
    cout << "\t缺页中断率为：" << dec << cnt*100 / V_accessSequeue.size()<<"%" << endl;
}
int main() {
    int p1 = 0x3000;
    int p2 = 0x1001;
    int p3 = 0x2001;
    vector<int> accessSequence = { 0, 1, 2, 3, 0, 1, 4, 0, 1, 2, 3, 4 };
    vector<int> Virtual_accessSequence = {
        0x1001,
        0x2234,
        0x3111,
        0x4232,
        0x1111,
        0x2534,
        0x5123,
        0x1847,
        0x2438,
        0x3349,
        0x4094,
        0x5149
    };
    //访问重复页面
    vector<int> extensive_repetitive_accessSequence = {
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004,
        0x0001, 0x0002, 0x0003, 0x0004,
        0x1001, 0x1002, 0x1003, 0x1004,
        0x2001, 0x2002, 0x2003, 0x2004
    };
    //访问连续空间
    vector<int> sequential_accessSequence = {
    0x000, 0x1000, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x7000,
    0x8000, 0x9000, 0xA000, 0xB000, 0xC000, 0xD000, 0xE000, 0xF000,
    0x0001, 0x1001, 0x2001, 0x3001, 0x4001, 0x5001, 0x6001, 0x7001,
    0x8001, 0x9001, 0xA001, 0xB001, 0xC001, 0xD001, 0xE001, 0xF001,
    0x0002, 0x1002, 0x2002, 0x3002, 0x4002, 0x5002, 0x6002, 0x7002,
    0x8002, 0x9002, 0xA002, 0xB002, 0xC002, 0xD002, 0xE002, 0xF002
    };


    Process* p_1 = new Process(2);
    p_1 -> initPageTable(9);
    Memory* m1 = new Memory(1024,0x2000);
    FIFO(p_1,m1, Virtual_accessSequence);

    Process* p_2 = new Process(2);
    p_2->initPageTable(9);
    Memory* m2 = new Memory(1024, 0x2000);
    RANDOM(p_2, m2, Virtual_accessSequence);

    Process* p_3 = new Process(2);
    p_3->initPageTable(9);
    Memory* m3 = new Memory(1024,0x2000);
    LRU(p_3, m3, Virtual_accessSequence);

    Process* p_4 = new Process(2);
    p_4->initPageTable(9);
    Memory* m4 = new Memory(1024,0x2000);
    CLOCK(p_4, m4, Virtual_accessSequence);

}