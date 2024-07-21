#define _CRT_SECURE_NO_WARNINGS 1
#include<iostream>
#include<vector>
#include<queue>
#include <iomanip>
#include <random>
#include <ctime>
using namespace std;
const double epsilon = 0.0001;
struct Process {
    int pid;            // 进程ID
    double arrival_time;   // 到达时间
    double run_time;     // 运行时间
    int priority;       // 优先级
    double remaining_time; // 剩余时间
    double start_time;     // 开始时间
    double finish_time;    // 结束时间
    double wait_time;      // 等待时间 进程在就绪队列中等待的时间
    double response_time;  // 响应时间
    bool is_IO_BOUND;       //是否为I/O繁忙型
    double IO_time;           //已经进行的IO时间
    double Begin_IOtime;    //开始进入IO队列的时间
    //输入 ID,到达时间，运行时间，优先级
    Process(int p, double at, double rt, double pr,bool is_IO,double io_time)
        : pid(p), arrival_time(at), run_time(rt), priority(pr), remaining_time(rt),
        start_time(-1), finish_time(at), wait_time(0), response_time(-1), is_IO_BOUND(is_IO), IO_time(io_time){}
};

// 生成随机进程
vector<Process> generateProcesses(int numProcesses, int maxArrivalTime, int maxBurstTime) {
    vector<Process> processes;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Process Seed: " << seed << endl;
    uniform_real_distribution<double> arrivalDist(0, 0);
    uniform_real_distribution<double> burstDist(maxBurstTime, maxBurstTime);
    uniform_real_distribution<double> ioTimeDist(0, 0.5 * maxBurstTime); // IO时间在0到最大运行时间的一半之间
    //bernoulli_distribution ioBoundDist(0.0);
    bernoulli_distribution ioBoundDist(0.5); // 50%几率是IO绑定进程
    auto roundToPrecision = [](double value, double precision) {
        return round(value / precision) * precision;
    };
    for (int i = 0; i < numProcesses; ++i) {
        double arrivalTime = roundToPrecision(arrivalDist(generator), 0.1);
        double burstTime = roundToPrecision(burstDist(generator), 0.1);
        bool isIOBound = ioBoundDist(generator);
        double ioTime = isIOBound ? roundToPrecision(ioTimeDist(generator), 0.1) : 0.0;

        processes.emplace_back(i, arrivalTime, burstTime,0, isIOBound, ioTime);
    }

    return processes;
}
bool compareArrivalTime(const Process& a, const Process& b) {
    return a.arrival_time < b.arrival_time;
}
struct CompareRunTime {
    bool operator()(const Process& p1, const Process& p2) {
        return p1.remaining_time > p2.remaining_time; // 剩余时间小的优先级高
    }
};

void sortprocessByArrivalTime(vector<Process>& process) {
    sort(process.begin(), process.end(), compareArrivalTime);
}
void printQueue(queue<Process> ready_queue) {
    while (!ready_queue.empty()) {
        Process p = ready_queue.front();
        cout <<" " << p.pid;
        ready_queue.pop();
    }
}
void printdeQueue(deque<Process> ready_queue) {
    while (!ready_queue.empty()) {
        Process p = ready_queue.front();
        cout << " " << p.pid;
        ready_queue.pop_front();
    }
    cout << endl;
}
void printPriorityQueue(priority_queue<Process, vector<Process>, CompareRunTime>ready_queue) {
    while (!ready_queue.empty()) {
        Process p = ready_queue.top();
        cout << " " << p.pid;
        ready_queue.pop();
    }
}

void Printstate(vector<Process>& process) {
    cout << left;
    cout << setw(10) << "进程ID"
        << setw(10) << "到达时间"
        << setw(10) << "开始时间"
        << setw(10) << "运行时间"
        << setw(10) << "结束时间"
        << setw(10) << "响应时间"
        << setw(10) << "等待时间"
        << setw(10) << "周转时间"
        << setw(10) << "带权周转时间"
        << endl;
    //平均周转时间
    double avg_turn_time = 0;
    double avg_wturn_time = 0;
    double avg_response_time = 0;
    double avg_wait_time = 0;
    for (auto& p : process) {

        //周转时间 = 结束时间-到达时间
        double turn_time = p.finish_time - p.arrival_time;avg_turn_time += turn_time;
        //带权周转时间
        double wturn_time = (double)turn_time / p.run_time; avg_wturn_time += wturn_time;
        avg_response_time += p.response_time;
        avg_wait_time += p.wait_time;
        cout << setw(10) << p.pid
            << setw(10) << p.arrival_time
            << setw(10) << p.start_time
            << setw(10) << p.run_time
            << setw(10) << p.finish_time
            << setw(10) << p.response_time
            << setw(10) << p.wait_time
            << setw(10) << turn_time
            << setw(10) << wturn_time
            << endl;
    }
    cout << endl;
    int n = process.size();
    cout << setw(20) << "平均周转时间"
        << setw(20) << "平均带权周转时间"
        << setw(20) << "平均等待时间"
        << setw(20) << "平均响应时间"
        << endl;

    cout << setw(20) << avg_turn_time/n
        << setw(20) << avg_wturn_time/n
        << setw(20) << avg_wait_time/n
        << setw(20) << avg_response_time/n
        << endl;

}

//FCFS算法 先来先服务 
void FCFS(vector<Process> process) {
    cout << "----------------------------------------------------------FCFS----------------------------------------------------------" << endl;
    cout << endl;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Seed: " << seed << endl;

    double current_time = 0;
    double busy_time = 0;
    int ptr = 0;
    deque<Process> ready_queue;
    queue<Process> IOrequest_queue;
    sortprocessByArrivalTime(process);

    while (ptr < process.size() || !ready_queue.empty() || !IOrequest_queue.empty()) {
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
            ready_queue.push_back(process[ptr]);
            ptr++;
        }
        if (!ready_queue.empty()) {
            Process current_process = ready_queue.front();
            ready_queue.pop_front();
            current_process.start_time = (current_process.start_time == -1) ? current_time : current_process.start_time;
            current_process.response_time = (current_process.response_time == -1) ? current_time - current_process.arrival_time : current_process.response_time;
            //当前进程有IO请求，并且remaining_time>0
            if (current_process.is_IO_BOUND && current_process.remaining_time > 0&& current_process.IO_time>0) {
                uniform_real_distribution<double> distribution(0, current_process.remaining_time - 0.1);
                double random_time = distribution(generator);
                random_time = round(random_time * 10) / 10.0;
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);;
                current_time += random_time;
                busy_time += random_time;
                current_process.remaining_time -= random_time;
                current_process.Begin_IOtime = current_time;
                current_process.finish_time = current_time;
                cout <<"  "<<current_time << "时刻,进程" << current_process.pid << "请求IO，进入阻塞队列,阻塞"<<current_process.IO_time<< "个时间单位,还剩" << current_process.remaining_time << "个时间单位未执行\n";
                IOrequest_queue.push(current_process);
            }
            else {
                cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，就绪队列："; printdeQueue(ready_queue);
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);;
                current_time += current_process.remaining_time;
                busy_time += current_process.remaining_time;
                current_process.remaining_time = 0;
                current_process.finish_time = current_time;
                cout <<"\t" << current_time << "时刻,进程" << current_process.pid << "完成" << endl;
            }

            while (!IOrequest_queue.empty() && IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time <= current_time) {
                Process IO_done_process = IOrequest_queue.front();
                IOrequest_queue.pop();
                IO_done_process.is_IO_BOUND = false;
                IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                ready_queue.push_front(IO_done_process);
                cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
            }


            while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                cout << process[ptr].arrival_time << "时刻,进程" << process[ptr].pid << "进入就绪队列" << endl;
                ready_queue.push_back(process[ptr]);
                ptr++;
            }
            for (auto& p : process) {
                if (p.pid == current_process.pid) {
                    p = current_process;
                    break;
                }
            }
        }
        else {
            if (ptr < process.size()) {
                double begin_time = current_time;
                current_time = process[ptr].arrival_time;
                cout << begin_time << "--" << current_time << "\tCPU空闲\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                  if(!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push_front(IO_done_process);
                    cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
                }
                double begin_time = current_time;
              if(!IOrequest_queue.empty())  current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                cout << begin_time << "--" << current_time << "\tCPU空闲\n";
            }

        }
    }

    Printstate(process);
    cout << "CPU利用率：" << busy_time * 100 / current_time << "%\n";
}
//SJF算法 短作业优先
void SJF(vector<Process> process) {
    cout << "----------------------------------------------------------SJF-----------------------------------------------------------" << endl;
    cout << endl;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Seed: " << seed << endl;
    double current_time = 0;
    double busy_time = 0;
    int ptr = 0;
    priority_queue<Process, vector<Process>, CompareRunTime> ready_queue;
    queue<Process> IOrequest_queue;
    // 首先按照到达顺序排序
    sortprocessByArrivalTime(process);

    while (ptr < process.size() || !ready_queue.empty() || !IOrequest_queue.empty()) {
        // 将到达时间小于等于当前时间的进程加入就绪队列
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
            ready_queue.push(process[ptr]);
            ptr++;
        }
        if (!ready_queue.empty()) {
            //不空则从就绪队列中取一个进程
            Process current_process = ready_queue.top();
            ready_queue.pop();
            current_process.start_time = (current_process.start_time == -1) ? current_time : current_process.start_time;
            current_process.response_time = (current_process.response_time == -1) ? current_time - current_process.arrival_time : current_process.response_time;
            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，就绪队列："; printPriorityQueue(ready_queue); cout << endl;
            //当前进程有IO请求，并且remaining_time>0
            if (current_process.is_IO_BOUND && current_process.remaining_time > 0 && current_process.IO_time > 0) {
                uniform_real_distribution<double> distribution(0, current_process.remaining_time - 0.1);
                double random_time = distribution(generator);
                random_time = round(random_time * 10) / 10.0;
                current_process.wait_time += (current_time - current_process.finish_time)<epsilon? 0 : (current_time - current_process.finish_time);
                current_time += random_time;
                busy_time += random_time;
                current_process.remaining_time -= random_time;
                current_process.Begin_IOtime = current_time;
                current_process.finish_time = current_time;
                cout << "  " << current_time << "时刻,进程" << current_process.pid << "请求IO，进入阻塞队列,阻塞" << current_process.IO_time << "个时间单位,还剩" << current_process.remaining_time << "个时间单位未执行\n";
                IOrequest_queue.push(current_process);
            }
            else {
                current_process.wait_time += current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);;
                current_time += current_process.remaining_time;
                busy_time += current_process.remaining_time;
                current_process.remaining_time = 0;
                current_process.finish_time = current_time;
                cout << "\t" << current_time << "时刻,进程" << current_process.pid << "完成" << endl;
            }

            while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
                ready_queue.push(process[ptr]);
                ptr++;
            }
            // 更新原始进程信息
            for (auto& p : process) {
                if (p.pid == current_process.pid) {
                    p = current_process;
                    break;
                }
            }


        }
        else {
            // 如果就绪队列为空但仍有未到达的进程
            if (ptr < process.size()) {
                double begin_time = current_time;
                current_time = process[ptr].arrival_time;
                cout << begin_time << "--" << current_time << "\tCPU空闲\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                    if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push(IO_done_process);
                    cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
                }
                if (!IOrequest_queue.empty()&&ready_queue.empty()) {
                    double begin_time = current_time;
                    current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                    cout << begin_time << "--" << current_time << "\tCPU空闲\n";
                }

            }
        }

    }
    Printstate(process);
     cout << "CPU利用率：" << busy_time * 100 / current_time << "%\n";
}
//时间片轮转算法
void RR(vector<Process> process, double r_length) {
    cout << "-----------------------------------------------------------RR-----------------------------------------------------------" << endl;
    cout << endl;
    cout << "时间片长度为：" << r_length << endl;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Seed: " << seed << endl;
    double current_time = 0;
    double busy_time = 0;
    int ptr = 0;
    queue<Process> ready_queue;
    queue<Process> IOrequest_queue;
    // 首先按照到达顺序排序
    sortprocessByArrivalTime(process);
    while (ptr < process.size() || !ready_queue.empty() || !IOrequest_queue.empty()) {
        // 将到达时间小于等于当前时间的进程加入就绪队列
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
            ready_queue.push(process[ptr]);
            ptr++;
        }
        while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
            Process IO_done_process = IOrequest_queue.front();
            IOrequest_queue.pop();
            IO_done_process.is_IO_BOUND = false;
            IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
            if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
            ready_queue.push(IO_done_process);
            cout <<"  "<< IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
        }
        if (!ready_queue.empty()) {
            //不空则从就绪队列中取一个进程
            Process current_process = ready_queue.front();
            ready_queue.pop();
            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，就绪队列："; printQueue(ready_queue);
            current_process.start_time = current_process.start_time == -1 ? current_time : current_process.start_time;
            current_process.response_time = current_process.response_time == -1 ? current_time - current_process.arrival_time : current_process.response_time;

            if (current_process.is_IO_BOUND && current_process.remaining_time > 0 && current_process.IO_time > 0) {
                uniform_real_distribution<double> distribution(0, current_process.remaining_time - 0.1);
                double random_time = distribution(generator);
                random_time = round(random_time * 10) / 10.0;
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);
                current_time += random_time >= r_length ? r_length : random_time;
                busy_time += random_time >= r_length ? r_length : random_time;
                current_process.remaining_time -= random_time >= r_length ? r_length : random_time;
                current_process.Begin_IOtime = current_time;
                current_process.finish_time = current_time;
                cout << "\n  " << current_time << "时刻,进程" << current_process.pid << "请求IO，进入阻塞队列,阻塞" << current_process.IO_time << "个时间单位,还剩" << current_process.remaining_time << "个时间单位未执行\n";
                IOrequest_queue.push(current_process);
            }
            else {
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);
                current_time += current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                busy_time += current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                current_process.remaining_time -= current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                current_process.finish_time = current_time;
                if (current_process.remaining_time)
                    cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间" << endl;
                else cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已完成" << endl;
                //处理            
                if (current_process.remaining_time != 0) {
                    while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                        cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
                        ready_queue.push(process[ptr]);
                        ptr++;
                    }
                    ready_queue.push(current_process);
                }
                else {
                    // 更新原始进程信息
                    for (auto& p : process) {
                        if (p.pid == current_process.pid) {
                            p = current_process;
                            break;
                        }
                    }
                }
            }

        }
        else {
            // 如果就绪队列为空但仍有未到达的进程
            if (ptr < process.size()) {
                double begin_time = current_time;
                current_time = process[ptr].arrival_time;
                cout << begin_time << "--" << current_time << "\tCPU空闲\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                    if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push(IO_done_process);
                    cout <<"  "<< IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
                }
                if (!IOrequest_queue.empty() && ready_queue.empty()) {
                    double begin_time = current_time;
                    if (!IOrequest_queue.empty())    current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                    cout << begin_time << "--" << current_time << "\tCPU空闲\n";
                }

            }

        }
    }
    cout << endl;
    Printstate(process);
    cout << "CPU利用率：" << busy_time * 100 / current_time << "%\n";
}

//多级反馈队列算法，非抢占式 
//void np_MLFQ(vector<Process> process) {
//    cout << "---------------------------------------------------------MLFQ-----------------------------------------------------------" << endl;
//    cout << endl;
//    double current_time = 0;
//    int ptr = 0;
//    queue<Process> q0, q1, q2;
//    queue<Process> ready_queue;
//
//    // 首先按照到达顺序排序
//    sortprocessByArrivalTime(process);
//    double r_length[] = { 1, 2, 4 };
//    cout << "一级队列时间片：" << r_length[0] << "\t二级队列时间片：" << r_length[1] << "\t三级队列时间片：" << r_length[2] << endl;
//
//    while (ptr < process.size() || !q0.empty() || !q1.empty() || !q2.empty()) {
//        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
//            cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
//            ready_queue.push(process[ptr]);
//            ptr++;
//        }
//        while (!ready_queue.empty() && ready_queue.front().arrival_time <= current_time) {
//
//            q0.push(ready_queue.front());
//            ready_queue.pop();
//        }
//        if (!q0.empty()) {
//            Process current_process = q0.front();
//            q0.pop(); current_process.start_time = current_process.start_time == -1 ? current_time : current_process.start_time;
//            current_process.response_time = current_process.response_time == -1 ? current_time - current_process.arrival_time : current_process.response_time;
//            current_process.wait_time += current_time - current_process.finish_time;
//            double run_time = min(current_process.remaining_time, r_length[0]);
//            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列："; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);
//            current_time += run_time;
//            current_process.finish_time = current_time;
//            current_process.remaining_time -= run_time;
//            if (current_process.remaining_time > 0) {
//                q1.push(current_process);
//                cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间，进入二级队列"<<endl;
//
//
//            }
//            else
//            {
//                current_process.finish_time = current_time;
//                for (auto& p : process) {
//                    if (p.pid == current_process.pid) {
//                        p = current_process;
//                        break;
//                    }
//                }
//                cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已于一级队列完成" << endl;
//            }
//        }
//        else if (!q1.empty()) {
//            Process current_process = q1.front();
//            q1.pop();
//            double run_time = min(current_process.remaining_time, r_length[1]);
//            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列：";; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);
//            current_time += run_time;
//            current_process.remaining_time -= run_time;
//            current_process.finish_time = current_time;
//            if (current_process.remaining_time > 0) {
//                q2.push(current_process);
//                cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间，进入三级队列" << endl;
//            }
//            else {
//                current_process.finish_time = current_time;
//                for (auto& p : process) {
//                    if (p.pid == current_process.pid) {
//                        p = current_process;
//                        break;
//                    }
//                }
//                cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已于二级队列完成" << endl;
//            }
//        }
//        else if (!q2.empty()) {
//            Process current_process = q2.front();
//            q2.pop();
//            double run_time = min(current_process.remaining_time, r_length[2]);
//            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列："; ; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);
//            current_time += run_time;
//            current_process.finish_time = current_time;
//            current_process.remaining_time -= run_time;
//            if (current_process.remaining_time > 0) {
//                q2.push(current_process);
//                cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << endl;
//            }
//            else {
//                current_process.finish_time = current_time;
//                for (auto& p : process) {
//                    if (p.pid == current_process.pid) {
//                        p = current_process;
//                        break;
//                    }
//                }
//                cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已与三级队列完成" << endl;
//            }
//        }
//        else {
//            current_time++;
//        }
//    }
//    Printstate(process);
//}
//多级反馈队列算法，抢占式 
void MLFQ(vector<Process> process) {
    cout << "---------------------------------------------------------MLFQ-----------------------------------------------------------" << endl;
    cout << endl;
    double current_time = 0;
    int ptr = 0;
    queue<Process> q0, q1, q2;
    queue<Process> ready_queue;
    queue<Process> IOrequest_queue;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Seed: " << seed << endl;
    // 首先按照到达顺序排序
    sortprocessByArrivalTime(process);
    double r_length[] = { 1, 2, 4 };
    double busy_time = 0;
    cout << "一级队列时间片：" << r_length[0] << "\t二级队列时间片：" << r_length[1] << "\t三级队列时间片：" << r_length[2] << endl;

    while (ptr < process.size() || !q0.empty() || !q1.empty() || !q2.empty() || !IOrequest_queue.empty()) {
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "时刻" << process[ptr].pid << "进入就绪队列" << endl;
            ready_queue.push(process[ptr]);
            ptr++;
        }
        while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
            Process IO_done_process = IOrequest_queue.front();
            IOrequest_queue.pop();
            IO_done_process.is_IO_BOUND = false;
            IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
            if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
            ready_queue.push(IO_done_process);
            cout << "  " << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "时刻,进程" << IO_done_process.pid << "完成IO，进入就绪队列" << endl;
        }
        while (!ready_queue.empty() && ready_queue.front().arrival_time <= current_time) {
            q0.push(ready_queue.front());
            ready_queue.pop();
        }

        if (!q0.empty()) {
            Process current_process = q0.front();
            q0.pop(); current_process.start_time = current_process.start_time == -1 ? current_time : current_process.start_time;
            current_process.response_time = current_process.response_time == -1 ? current_time - current_process.arrival_time : current_process.response_time;  
            cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列："; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);

            if (current_process.is_IO_BOUND && current_process.remaining_time > 0 && current_process.IO_time > 0) {
                uniform_real_distribution<double> distribution(0, r_length[0]);
                double random_time = distribution(generator);
                random_time = round(random_time * 10) / 10.0;
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);
                current_time +=  random_time >= r_length[0] ? r_length[0] : random_time;
                busy_time += random_time >= r_length[0] ? r_length[0] : random_time;
                current_process.remaining_time -= random_time >= r_length[0] ? r_length[0] : random_time;
                current_process.Begin_IOtime = current_time;
                current_process.finish_time = current_time;
                cout << "\n  " << current_time << "时刻,进程" << current_process.pid << "请求IO，进入阻塞队列,阻塞" << current_process.IO_time << "个时间单位,还剩" << current_process.remaining_time << "个时间单位未执行\n";
                IOrequest_queue.push(current_process);
            }
            else {
                current_process.wait_time += current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);
                busy_time += current_process.remaining_time >= r_length[0] ? r_length[0] : current_process.remaining_time;
                double run_time = min(current_process.remaining_time, r_length[0]);
                current_time += run_time;
                current_process.finish_time = current_time;
                current_process.remaining_time -= run_time;
                if (current_process.remaining_time > 0) {
                    q1.push(current_process);
                    cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间，进入二级队列" << endl;
                }
                else
                {
                    for (auto& p : process) {
                        if (p.pid == current_process.pid) {
                            p = current_process;
                            break;
                        }
                    }
                    cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已于一级队列完成" << endl;
                }
            }        
        }
        else if (!q1.empty()) {
             if((ptr < process.size() && process[ptr].arrival_time <= current_time)||!ready_queue.empty()) {
                 continue;
            }
             if (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) continue;
            Process current_process = q1.front();
            q1.pop();
            double r_time;
            double run_time = min(current_process.remaining_time, r_length[1]);
            //抢占否？
            if (ptr < process.size()) { r_time = run_time > (process[ptr].arrival_time - current_time) ? process[ptr].arrival_time - current_time : run_time;
            }
            else r_time = run_time;
           cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列："; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);
           current_process.wait_time += current_time - current_process.finish_time;
           busy_time += r_time;
           current_time += r_time;
            current_process.remaining_time -= r_time;
            current_process.finish_time = current_time;
            if (current_process.remaining_time > 0) {
                if (r_time == run_time) {
                    q2.push(current_process);
                    cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间，进入三级队列" << endl;
                }
                else {
                    q1.push(current_process);
                    cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << "单位运行时间，被抢占，重新进入二级队列" << endl;
                }

            }
            else {               
                for (auto& p : process) {
                    if (p.pid == current_process.pid) {
                        p = current_process;
                        break;
                    }
                }
                cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已于二级队列完成" << endl;
            }
        }
        else if (!q2.empty()) {
            if ((ptr < process.size() && process[ptr].arrival_time <= current_time) || !ready_queue.empty()) {
                continue;
            }
            if (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon)  continue;
            if (!q0.empty() || !q1.empty()) continue;
            Process current_process = q2.front();
            q2.pop();
            double run_time = min(current_process.remaining_time, r_length[2]);
            double r_time;
            //抢占否？
           if(ptr< process.size())  r_time = run_time > (process[ptr].arrival_time - current_time) ? process[ptr].arrival_time - current_time : run_time;
           else
           {
               r_time = run_time;
           }
           cout << "\t" << current_time << "时刻,进程" << current_process.pid << "运行，一级队列："; ; printQueue(q0); cout << "\t二级队列："; printQueue(q1); cout << "\t三级队列："; printQueue(q2);

            current_process.wait_time += current_time - current_process.finish_time;
            busy_time += r_time;
            current_time += r_time;
            current_process.finish_time = current_time;
            current_process.remaining_time -= r_time;
            if (current_process.remaining_time > 0) {
                if (r_time == run_time) {
                    q2.push(current_process);
                    cout << "\t\t 进程" << current_process.pid << "还剩" << current_process.remaining_time << endl;
                }
                else {
                    q2.push(current_process);
                    cout << "\t\t 进程" << current_process.pid << "被抢占，还剩" << current_process.remaining_time << endl;
                }
                
            }
            else {
                for (auto& p : process) {
                    if (p.pid == current_process.pid) {
                        p = current_process;
                        break;
                    }
                }
                cout << "\t\t" << current_time << "时刻，进程" << current_process.pid << "已与三级队列完成" << endl;
            }
        }
        else {
            current_time+=0.1;
        }
    }
    Printstate(process);
    cout << "CPU利用率：" << busy_time * 100 / current_time << "%\n";
}
int main() {
    /*
    FCFS/SJF 测试用例
    vector<Process> process = {
        Process(1,8,2,0),
        Process(2,8.4,1,0),
        Process(3,8.8, 0.5 ,0),
        Process(4,9,0.2,0),
    };
    RR 测试用例
    vector<Process> process = {
        Process(1,0,3,0),
        Process(2,1,6,0),
        Process(3,2,4 ,0),
        Process(4,3,5,0),
        Process(5,4,2,0)
    };
    多级反馈队列测试用例
     vector<Process> process = {
        Process(1,0,3,0),
        Process(2,1,8,0),
        Process(3,3,4,0),
        Process(4,4,5,0),
        Process(5,5,7,0)
    };
    */
    //pid,到达时间，运行时间，优先级,是否IO，IO时间
   /* vector<Process> process = {
       Process(1,0,3,0,1,5),
       Process(2,1,8,0,0,0),
       Process(3,3,4,0,1,2),
       Process(4,4,5,0,0,0),
       Process(5,5,7,0,0,0)
    };*/

    int numProcesses = 20;
    int maxArrivalTime = 1;
    int maxBurstTime = 10;
    //正常测试
    vector<Process> process = generateProcesses(numProcesses, maxArrivalTime, maxBurstTime);
    //几乎同时到达
    //vector<Process> process = generateProcesses(10, 1, 50);
    //所有进程运行时间都一样
    //vector<Process> process = generateProcesses(10, 100, 3);
    FCFS(process);
    SJF(process);
    RR(process,2);
    MLFQ(process);


    return 0;
   

}