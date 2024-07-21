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
    int pid;            // ����ID
    double arrival_time;   // ����ʱ��
    double run_time;     // ����ʱ��
    int priority;       // ���ȼ�
    double remaining_time; // ʣ��ʱ��
    double start_time;     // ��ʼʱ��
    double finish_time;    // ����ʱ��
    double wait_time;      // �ȴ�ʱ�� �����ھ��������еȴ���ʱ��
    double response_time;  // ��Ӧʱ��
    bool is_IO_BOUND;       //�Ƿ�ΪI/O��æ��
    double IO_time;           //�Ѿ����е�IOʱ��
    double Begin_IOtime;    //��ʼ����IO���е�ʱ��
    //���� ID,����ʱ�䣬����ʱ�䣬���ȼ�
    Process(int p, double at, double rt, double pr,bool is_IO,double io_time)
        : pid(p), arrival_time(at), run_time(rt), priority(pr), remaining_time(rt),
        start_time(-1), finish_time(at), wait_time(0), response_time(-1), is_IO_BOUND(is_IO), IO_time(io_time){}
};

// �����������
vector<Process> generateProcesses(int numProcesses, int maxArrivalTime, int maxBurstTime) {
    vector<Process> processes;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Process Seed: " << seed << endl;
    uniform_real_distribution<double> arrivalDist(0, 0);
    uniform_real_distribution<double> burstDist(maxBurstTime, maxBurstTime);
    uniform_real_distribution<double> ioTimeDist(0, 0.5 * maxBurstTime); // IOʱ����0���������ʱ���һ��֮��
    //bernoulli_distribution ioBoundDist(0.0);
    bernoulli_distribution ioBoundDist(0.5); // 50%������IO�󶨽���
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
        return p1.remaining_time > p2.remaining_time; // ʣ��ʱ��С�����ȼ���
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
    cout << setw(10) << "����ID"
        << setw(10) << "����ʱ��"
        << setw(10) << "��ʼʱ��"
        << setw(10) << "����ʱ��"
        << setw(10) << "����ʱ��"
        << setw(10) << "��Ӧʱ��"
        << setw(10) << "�ȴ�ʱ��"
        << setw(10) << "��תʱ��"
        << setw(10) << "��Ȩ��תʱ��"
        << endl;
    //ƽ����תʱ��
    double avg_turn_time = 0;
    double avg_wturn_time = 0;
    double avg_response_time = 0;
    double avg_wait_time = 0;
    for (auto& p : process) {

        //��תʱ�� = ����ʱ��-����ʱ��
        double turn_time = p.finish_time - p.arrival_time;avg_turn_time += turn_time;
        //��Ȩ��תʱ��
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
    cout << setw(20) << "ƽ����תʱ��"
        << setw(20) << "ƽ����Ȩ��תʱ��"
        << setw(20) << "ƽ���ȴ�ʱ��"
        << setw(20) << "ƽ����Ӧʱ��"
        << endl;

    cout << setw(20) << avg_turn_time/n
        << setw(20) << avg_wturn_time/n
        << setw(20) << avg_wait_time/n
        << setw(20) << avg_response_time/n
        << endl;

}

//FCFS�㷨 �����ȷ��� 
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
            cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
            ready_queue.push_back(process[ptr]);
            ptr++;
        }
        if (!ready_queue.empty()) {
            Process current_process = ready_queue.front();
            ready_queue.pop_front();
            current_process.start_time = (current_process.start_time == -1) ? current_time : current_process.start_time;
            current_process.response_time = (current_process.response_time == -1) ? current_time - current_process.arrival_time : current_process.response_time;
            //��ǰ������IO���󣬲���remaining_time>0
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
                cout <<"  "<<current_time << "ʱ��,����" << current_process.pid << "����IO��������������,����"<<current_process.IO_time<< "��ʱ�䵥λ,��ʣ" << current_process.remaining_time << "��ʱ�䵥λδִ��\n";
                IOrequest_queue.push(current_process);
            }
            else {
                cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У��������У�"; printdeQueue(ready_queue);
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);;
                current_time += current_process.remaining_time;
                busy_time += current_process.remaining_time;
                current_process.remaining_time = 0;
                current_process.finish_time = current_time;
                cout <<"\t" << current_time << "ʱ��,����" << current_process.pid << "���" << endl;
            }

            while (!IOrequest_queue.empty() && IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time <= current_time) {
                Process IO_done_process = IOrequest_queue.front();
                IOrequest_queue.pop();
                IO_done_process.is_IO_BOUND = false;
                IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                ready_queue.push_front(IO_done_process);
                cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
            }


            while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                cout << process[ptr].arrival_time << "ʱ��,����" << process[ptr].pid << "�����������" << endl;
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
                cout << begin_time << "--" << current_time << "\tCPU����\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                  if(!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push_front(IO_done_process);
                    cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
                }
                double begin_time = current_time;
              if(!IOrequest_queue.empty())  current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                cout << begin_time << "--" << current_time << "\tCPU����\n";
            }

        }
    }

    Printstate(process);
    cout << "CPU�����ʣ�" << busy_time * 100 / current_time << "%\n";
}
//SJF�㷨 ����ҵ����
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
    // ���Ȱ��յ���˳������
    sortprocessByArrivalTime(process);

    while (ptr < process.size() || !ready_queue.empty() || !IOrequest_queue.empty()) {
        // ������ʱ��С�ڵ��ڵ�ǰʱ��Ľ��̼����������
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
            ready_queue.push(process[ptr]);
            ptr++;
        }
        if (!ready_queue.empty()) {
            //������Ӿ���������ȡһ������
            Process current_process = ready_queue.top();
            ready_queue.pop();
            current_process.start_time = (current_process.start_time == -1) ? current_time : current_process.start_time;
            current_process.response_time = (current_process.response_time == -1) ? current_time - current_process.arrival_time : current_process.response_time;
            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У��������У�"; printPriorityQueue(ready_queue); cout << endl;
            //��ǰ������IO���󣬲���remaining_time>0
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
                cout << "  " << current_time << "ʱ��,����" << current_process.pid << "����IO��������������,����" << current_process.IO_time << "��ʱ�䵥λ,��ʣ" << current_process.remaining_time << "��ʱ�䵥λδִ��\n";
                IOrequest_queue.push(current_process);
            }
            else {
                current_process.wait_time += current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);;
                current_time += current_process.remaining_time;
                busy_time += current_process.remaining_time;
                current_process.remaining_time = 0;
                current_process.finish_time = current_time;
                cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���" << endl;
            }

            while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
                ready_queue.push(process[ptr]);
                ptr++;
            }
            // ����ԭʼ������Ϣ
            for (auto& p : process) {
                if (p.pid == current_process.pid) {
                    p = current_process;
                    break;
                }
            }


        }
        else {
            // �����������Ϊ�յ�����δ����Ľ���
            if (ptr < process.size()) {
                double begin_time = current_time;
                current_time = process[ptr].arrival_time;
                cout << begin_time << "--" << current_time << "\tCPU����\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                    if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push(IO_done_process);
                    cout << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
                }
                if (!IOrequest_queue.empty()&&ready_queue.empty()) {
                    double begin_time = current_time;
                    current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                    cout << begin_time << "--" << current_time << "\tCPU����\n";
                }

            }
        }

    }
    Printstate(process);
     cout << "CPU�����ʣ�" << busy_time * 100 / current_time << "%\n";
}
//ʱ��Ƭ��ת�㷨
void RR(vector<Process> process, double r_length) {
    cout << "-----------------------------------------------------------RR-----------------------------------------------------------" << endl;
    cout << endl;
    cout << "ʱ��Ƭ����Ϊ��" << r_length << endl;
    unsigned int seed = static_cast<unsigned int>(time(nullptr));
    mt19937 generator(seed);
    cout << "Seed: " << seed << endl;
    double current_time = 0;
    double busy_time = 0;
    int ptr = 0;
    queue<Process> ready_queue;
    queue<Process> IOrequest_queue;
    // ���Ȱ��յ���˳������
    sortprocessByArrivalTime(process);
    while (ptr < process.size() || !ready_queue.empty() || !IOrequest_queue.empty()) {
        // ������ʱ��С�ڵ��ڵ�ǰʱ��Ľ��̼����������
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
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
            cout <<"  "<< IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
        }
        if (!ready_queue.empty()) {
            //������Ӿ���������ȡһ������
            Process current_process = ready_queue.front();
            ready_queue.pop();
            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У��������У�"; printQueue(ready_queue);
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
                cout << "\n  " << current_time << "ʱ��,����" << current_process.pid << "����IO��������������,����" << current_process.IO_time << "��ʱ�䵥λ,��ʣ" << current_process.remaining_time << "��ʱ�䵥λδִ��\n";
                IOrequest_queue.push(current_process);
            }
            else {
                current_process.wait_time += (current_time - current_process.finish_time) < epsilon ? 0 : (current_time - current_process.finish_time);
                current_time += current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                busy_time += current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                current_process.remaining_time -= current_process.remaining_time >= r_length ? r_length : current_process.remaining_time;
                current_process.finish_time = current_time;
                if (current_process.remaining_time)
                    cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ��" << endl;
                else cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "�����" << endl;
                //����            
                if (current_process.remaining_time != 0) {
                    while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
                        cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
                        ready_queue.push(process[ptr]);
                        ptr++;
                    }
                    ready_queue.push(current_process);
                }
                else {
                    // ����ԭʼ������Ϣ
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
            // �����������Ϊ�յ�����δ����Ľ���
            if (ptr < process.size()) {
                double begin_time = current_time;
                current_time = process[ptr].arrival_time;
                cout << begin_time << "--" << current_time << "\tCPU����\n";
            }
            else {
                while (!IOrequest_queue.empty() && (IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time - current_time) < epsilon) {
                    Process IO_done_process = IOrequest_queue.front();
                    IOrequest_queue.pop();
                    IO_done_process.is_IO_BOUND = false;
                    IO_done_process.finish_time = IO_done_process.Begin_IOtime + IO_done_process.IO_time;
                    if (!IOrequest_queue.empty())  IOrequest_queue.front().Begin_IOtime = IO_done_process.finish_time;
                    ready_queue.push(IO_done_process);
                    cout <<"  "<< IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
                }
                if (!IOrequest_queue.empty() && ready_queue.empty()) {
                    double begin_time = current_time;
                    if (!IOrequest_queue.empty())    current_time = IOrequest_queue.front().Begin_IOtime + IOrequest_queue.front().IO_time;
                    cout << begin_time << "--" << current_time << "\tCPU����\n";
                }

            }

        }
    }
    cout << endl;
    Printstate(process);
    cout << "CPU�����ʣ�" << busy_time * 100 / current_time << "%\n";
}

//�༶���������㷨������ռʽ 
//void np_MLFQ(vector<Process> process) {
//    cout << "---------------------------------------------------------MLFQ-----------------------------------------------------------" << endl;
//    cout << endl;
//    double current_time = 0;
//    int ptr = 0;
//    queue<Process> q0, q1, q2;
//    queue<Process> ready_queue;
//
//    // ���Ȱ��յ���˳������
//    sortprocessByArrivalTime(process);
//    double r_length[] = { 1, 2, 4 };
//    cout << "һ������ʱ��Ƭ��" << r_length[0] << "\t��������ʱ��Ƭ��" << r_length[1] << "\t��������ʱ��Ƭ��" << r_length[2] << endl;
//
//    while (ptr < process.size() || !q0.empty() || !q1.empty() || !q2.empty()) {
//        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
//            cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
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
//            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�"; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);
//            current_time += run_time;
//            current_process.finish_time = current_time;
//            current_process.remaining_time -= run_time;
//            if (current_process.remaining_time > 0) {
//                q1.push(current_process);
//                cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ�䣬�����������"<<endl;
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
//                cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "����һ���������" << endl;
//            }
//        }
//        else if (!q1.empty()) {
//            Process current_process = q1.front();
//            q1.pop();
//            double run_time = min(current_process.remaining_time, r_length[1]);
//            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�";; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);
//            current_time += run_time;
//            current_process.remaining_time -= run_time;
//            current_process.finish_time = current_time;
//            if (current_process.remaining_time > 0) {
//                q2.push(current_process);
//                cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ�䣬������������" << endl;
//            }
//            else {
//                current_process.finish_time = current_time;
//                for (auto& p : process) {
//                    if (p.pid == current_process.pid) {
//                        p = current_process;
//                        break;
//                    }
//                }
//                cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "���ڶ����������" << endl;
//            }
//        }
//        else if (!q2.empty()) {
//            Process current_process = q2.front();
//            q2.pop();
//            double run_time = min(current_process.remaining_time, r_length[2]);
//            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�"; ; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);
//            current_time += run_time;
//            current_process.finish_time = current_time;
//            current_process.remaining_time -= run_time;
//            if (current_process.remaining_time > 0) {
//                q2.push(current_process);
//                cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << endl;
//            }
//            else {
//                current_process.finish_time = current_time;
//                for (auto& p : process) {
//                    if (p.pid == current_process.pid) {
//                        p = current_process;
//                        break;
//                    }
//                }
//                cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "���������������" << endl;
//            }
//        }
//        else {
//            current_time++;
//        }
//    }
//    Printstate(process);
//}
//�༶���������㷨����ռʽ 
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
    // ���Ȱ��յ���˳������
    sortprocessByArrivalTime(process);
    double r_length[] = { 1, 2, 4 };
    double busy_time = 0;
    cout << "һ������ʱ��Ƭ��" << r_length[0] << "\t��������ʱ��Ƭ��" << r_length[1] << "\t��������ʱ��Ƭ��" << r_length[2] << endl;

    while (ptr < process.size() || !q0.empty() || !q1.empty() || !q2.empty() || !IOrequest_queue.empty()) {
        while (ptr < process.size() && process[ptr].arrival_time <= current_time) {
            cout << process[ptr].arrival_time << "ʱ��" << process[ptr].pid << "�����������" << endl;
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
            cout << "  " << IO_done_process.Begin_IOtime + IO_done_process.IO_time << "ʱ��,����" << IO_done_process.pid << "���IO�������������" << endl;
        }
        while (!ready_queue.empty() && ready_queue.front().arrival_time <= current_time) {
            q0.push(ready_queue.front());
            ready_queue.pop();
        }

        if (!q0.empty()) {
            Process current_process = q0.front();
            q0.pop(); current_process.start_time = current_process.start_time == -1 ? current_time : current_process.start_time;
            current_process.response_time = current_process.response_time == -1 ? current_time - current_process.arrival_time : current_process.response_time;  
            cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�"; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);

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
                cout << "\n  " << current_time << "ʱ��,����" << current_process.pid << "����IO��������������,����" << current_process.IO_time << "��ʱ�䵥λ,��ʣ" << current_process.remaining_time << "��ʱ�䵥λδִ��\n";
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
                    cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ�䣬�����������" << endl;
                }
                else
                {
                    for (auto& p : process) {
                        if (p.pid == current_process.pid) {
                            p = current_process;
                            break;
                        }
                    }
                    cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "����һ���������" << endl;
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
            //��ռ��
            if (ptr < process.size()) { r_time = run_time > (process[ptr].arrival_time - current_time) ? process[ptr].arrival_time - current_time : run_time;
            }
            else r_time = run_time;
           cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�"; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);
           current_process.wait_time += current_time - current_process.finish_time;
           busy_time += r_time;
           current_time += r_time;
            current_process.remaining_time -= r_time;
            current_process.finish_time = current_time;
            if (current_process.remaining_time > 0) {
                if (r_time == run_time) {
                    q2.push(current_process);
                    cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ�䣬������������" << endl;
                }
                else {
                    q1.push(current_process);
                    cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << "��λ����ʱ�䣬����ռ�����½����������" << endl;
                }

            }
            else {               
                for (auto& p : process) {
                    if (p.pid == current_process.pid) {
                        p = current_process;
                        break;
                    }
                }
                cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "���ڶ����������" << endl;
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
            //��ռ��
           if(ptr< process.size())  r_time = run_time > (process[ptr].arrival_time - current_time) ? process[ptr].arrival_time - current_time : run_time;
           else
           {
               r_time = run_time;
           }
           cout << "\t" << current_time << "ʱ��,����" << current_process.pid << "���У�һ�����У�"; ; printQueue(q0); cout << "\t�������У�"; printQueue(q1); cout << "\t�������У�"; printQueue(q2);

            current_process.wait_time += current_time - current_process.finish_time;
            busy_time += r_time;
            current_time += r_time;
            current_process.finish_time = current_time;
            current_process.remaining_time -= r_time;
            if (current_process.remaining_time > 0) {
                if (r_time == run_time) {
                    q2.push(current_process);
                    cout << "\t\t ����" << current_process.pid << "��ʣ" << current_process.remaining_time << endl;
                }
                else {
                    q2.push(current_process);
                    cout << "\t\t ����" << current_process.pid << "����ռ����ʣ" << current_process.remaining_time << endl;
                }
                
            }
            else {
                for (auto& p : process) {
                    if (p.pid == current_process.pid) {
                        p = current_process;
                        break;
                    }
                }
                cout << "\t\t" << current_time << "ʱ�̣�����" << current_process.pid << "���������������" << endl;
            }
        }
        else {
            current_time+=0.1;
        }
    }
    Printstate(process);
    cout << "CPU�����ʣ�" << busy_time * 100 / current_time << "%\n";
}
int main() {
    /*
    FCFS/SJF ��������
    vector<Process> process = {
        Process(1,8,2,0),
        Process(2,8.4,1,0),
        Process(3,8.8, 0.5 ,0),
        Process(4,9,0.2,0),
    };
    RR ��������
    vector<Process> process = {
        Process(1,0,3,0),
        Process(2,1,6,0),
        Process(3,2,4 ,0),
        Process(4,3,5,0),
        Process(5,4,2,0)
    };
    �༶�������в�������
     vector<Process> process = {
        Process(1,0,3,0),
        Process(2,1,8,0),
        Process(3,3,4,0),
        Process(4,4,5,0),
        Process(5,5,7,0)
    };
    */
    //pid,����ʱ�䣬����ʱ�䣬���ȼ�,�Ƿ�IO��IOʱ��
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
    //��������
    vector<Process> process = generateProcesses(numProcesses, maxArrivalTime, maxBurstTime);
    //����ͬʱ����
    //vector<Process> process = generateProcesses(10, 1, 50);
    //���н�������ʱ�䶼һ��
    //vector<Process> process = generateProcesses(10, 100, 3);
    FCFS(process);
    SJF(process);
    RR(process,2);
    MLFQ(process);


    return 0;
   

}