#define _CRT_SECURE_NO_WARNINGS 1
#include<iostream>
#include <vector>
#include <unordered_map>
#include <string>
#include <sstream>
using namespace std;
const int BLOCK_SIZE = 4; // ������С
const int DISK_SIZE = 1024; // ������̴�С�����������

enum class Permission {
    READ,
    WRITE,
    EXECUTE
};

class User {
public:
    User(const string& username, const string& password)
        : username(username), password(password) {}
    const string& getUsername() const { return username; }//��ȡ�û����û�����
    const string& getPassword() const { return password; }//��ȡ�û������롣
private:
    string username;
    string password;
};

class Manager {
private:
    unordered_map<string, User*> users; 
public:
    //ע���û�
    bool registerUser(const string& username, const string& password) {
        if (users.find(username) != users.end()) { // ����û��Ѵ���
            cout << "User already exists." << endl;

            return false;
        }
        users[username] = new User(username, password); // ����������û�
        return true;
    }
    //�û���¼
    User* loginUser(const string& username, const string& password) {
        auto it = users.find(username);
        if (it == users.end()) { // �����û�����֤����
            cout << "Invalid username." << endl;
            return nullptr;
        }
        else if (it->second->getPassword() != password) {
            cout << "Wrong Password." << endl;
            return nullptr;
        }
        return it->second;
    }

};


struct Block {
    char data[BLOCK_SIZE] = {};
};

struct File {
    string name;
    int size;
    vector<int> blocks; // �洢�ļ�ʹ�õĿ��
    unordered_map<string, vector<Permission>> userPermissions; //�û�����Ȩ��
    bool isOpen;

    File(const string& name) : name(name), size(0), isOpen(false) {}
    //����û��Ƿ�����ض�Ȩ��

};

struct Directory {
    string name;
    Directory* parent;
    unordered_map<string, File*> files;
    unordered_map<string, Directory*> directories;
    Directory(const string& name, Directory* parent = nullptr) : name(name), parent(parent) {}
};

class FileSystem {
public:
    Directory* root;
    Manager& userManager;  // �û�����������
    FileSystem(Manager& userManager): userManager(userManager) {
        root = new Directory("/");
        currentDirectory = root;
        disk.resize(DISK_SIZE);
        freeBlocks.resize(DISK_SIZE, true);
        initializeDirectories();
      
    }
    ~FileSystem() {
        delete root;
    }
    //�л�·��
    void cd(const string& path) {
        if (path == "/") {
            currentDirectory = root;
            return;
        }
        Directory* target = navigate(path);
        if (target) {
            currentDirectory = target;
        }
        else {
            cout << "Directory not found: " << path << endl;
        }
    }
    //���ص�ǰĿ¼·��
    string pwd() const {
        string path = "";
        if (currentDirectory == root) return"/";
        else {
            for (Directory* dir = currentDirectory; dir != root; dir = dir->parent) {
                path = "/" + dir->name + path;
            }
            return  path; 
        }
        
    }
    //�����ļ�
    bool createFile(const string& path,User *user) {
        if (!isUserAuthenticated(user)) {
            return false;
        }
        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) != dir->files.end()) {
                return false; // Ŀ¼�����ڻ��ļ��Ѵ���
            }
            dir->files[name] = new File(name);
        }
        else {
            dir->files[path] = new File(path);
            
        }
        return true;
    }
    //ɾ���ļ�
    bool deleteFile(const string& path) {

        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        File* file;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
            file = dir->files[name];
        }
        else {
            if (currentDirectory->files.find(path) == currentDirectory->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
             file = currentDirectory->files[path];
        }

        //ɾ���ļ��������
        for (int block : file->blocks) {
            freeBlock(block);
        }
        //ɾ���ļ�ָ��
        delete file;
        //��Ŀ¼��ɾ���ļ���
        currentDirectory->files.erase(path);
        return true;
    }
    //���ļ�
    bool readFile(const string& path, string& data, User* user) {
        if (!isUserAuthenticated(user)) {
            return false;
        }

        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        File* file;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
            file = dir->files[name];
        }
        else {
            if (!dir || dir->files.find(path) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
            file = dir->files[path];
        }

        if (!hasPermission(file, user, Permission::READ)) {
            cout << "READ Permission denied.\n";
            return false;
        }

        data.clear();
        for (int block : file->blocks) {
            data.append(disk[block].data, BLOCK_SIZE);
        }
        data.resize(file->size); // ȥ�����ಿ��
        return true;
    }
    //д�ļ�
    bool writeFile(const string& path, const string& data, User* user) {
        if (!isUserAuthenticated(user)) {
            return false;
        }
        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        File* file;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false;
            }
            file = dir->files[name];
        }
        else {
            if (!dir || dir->files.find(path) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false;
            }
            file = dir->files[path];
        }
        if (!hasPermission(file, user, Permission::WRITE)) {
            cout << "WRITE Permission denied.\n";
            return false;
        }
        // ����ļ����еĿ�
        for (int block : file->blocks) {
            freeBlock(block);
        }
        file->blocks.clear();
        file->size = data.size();
        int blockNum = (file->size - 1) / BLOCK_SIZE + 1;
        for (int i = 0; i < blockNum; ++i) {
            int block = allocateBlock();
            if (block == -1) {
                cout << "Not enough disk space" << endl;
                return false;
            }
            file->blocks.push_back(block);
            int size = min(BLOCK_SIZE, (int)data.size() - i * BLOCK_SIZE);
            memcpy(disk[block].data, data.c_str() + i * BLOCK_SIZE, size);
        }

        return true;
    }
    //����Ŀ¼
    bool mkdir(const string& name,User *user) {
        if (!isUserAuthenticated(user)) {
            return false;
        }
        if (currentDirectory->directories.find(name) != currentDirectory->directories.end()) {
            cout << "Directory already exists: " << name << endl;
            return false;
        }
        currentDirectory->directories[name] = new Directory(name, currentDirectory);
        return true;
    }
    bool deleteDirectoryHelper(Directory* dir) {
        // �ݹ�ɾ����Ŀ¼���ļ�
        for (auto& entry : dir->directories) {
            deleteDirectoryHelper(entry.second);
        }
        dir->directories.clear();
        dir->files.clear();
        delete dir;
        return true;
    }
    //����currentDirectory��nameɾ��Ŀ¼
    bool deleteDirectory(const string& path) {
        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->directories.find(name) == dir->directories.end()) {
                return false; // Ŀ¼�����ڻ���Ŀ¼������
            }
            Directory* target = dir->directories[name];
            // �ݹ�ɾ��Ŀ¼�е������ļ�����Ŀ¼
            for (auto& file : target->files) {
                deleteFile(path + "/" + file.first);
            }
            for (auto& subdir : target->directories) {
                deleteDirectory(path + "/" + subdir.first);
            }
            // ɾ��Ŀ¼���󲢴Ӹ�Ŀ¼��ɾ����Ŀ¼��
            delete target;
            dir->directories.erase(name);
            return true;
        }
        else {
            if (dir != NULL) {
                if (dir->directories.find(path) == dir->directories.end()) {
                    return false; // Ŀ¼�����ڻ���Ŀ¼������
                }
                else {
                    auto it = dir->directories.find(path);
                    deleteDirectoryHelper(it->second);
                    dir->directories.erase(it->first);
                }
            }
        }
       
    }
    void listDirectory(){
        if (currentDirectory != NULL) {
            for (const auto& dir : currentDirectory->directories) {
                cout << dir.first << "/" << endl;
            }
            for (const auto& file : currentDirectory->files) {
                cout << file.first << endl;
            }
        }
        else {
            cout << "wrong!" << endl;
        }
        
    }
    void showblock() {
        for (int i = 0; i  < DISK_SIZE; i++) {
            if (i % 32 == 0)cout << endl;
            if (freeBlocks[i] == 0) cout << 1 << " ";
            else cout << 0 << " ";
        }
        cout << endl;
    }
    //�༭�ļ������ǣ�
    bool editFile(const string& path, User* user) {
        if (!isUserAuthenticated(user)) {
            return false;
        }  
        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        File* file;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
            file = dir->files[name];
        }
        else {
            if (!dir || dir->files.find(path) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false; // Ŀ¼�����ڻ��ļ�������
            }
            file = dir->files[path];
        }
        if (!hasPermission(file, user, Permission::WRITE)) {
            cout << "WRITE Permission denied.\n";
            return false;
        }
        system("cls");
        string data;
        if (readFile(path, data,user)) {
            cout << data<<endl;
            cout << "Editing file. Enter ':wq' to save and quit.\n";
            cout << "Enter ':q' to quit\n";
            cout << "Current content:\n" << data << endl;
            string newData;
            string line;
            while (true) {
                getline(cin, line);
                if (line == ":wq") {
                    return writeFile(path, newData, user);
                }
                else if (line == ":q") {
                    return 1;
                }
                newData += line + "\n";
            }

        }
        return false;
    }
    //�ж��Ƿ���Ȩ��
    bool hasPermission(File* file, User* user, Permission perm) {
        if (user->getUsername() == "root") {
            return true; // Admin ӵ������Ȩ��
        }
        const auto& perms = file->userPermissions.find(user->getUsername());
        if (perms != file->userPermissions.end()) {
            return find(perms->second.begin(), perms->second.end(), perm) != perms->second.end();
        }
        return false;
    }
    // Ϊ�ļ������û�Ȩ��
    bool setFilePermission(const string& path, const string& username, const vector<Permission>& perms, User* admin) {
        if (!isUserAuthenticated(admin)) {
            cerr << "Permission denied.\n";
            return false;
        }
        Directory* dir = (path[0] == '/') ? root : currentDirectory;
        File* file;
        if (path[0] == '/') {
            string name;
            dir = traversePath(path, name);
            if (!dir || dir->files.find(name) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false;
            }
            file = dir->files[name];

        }
        else {
            if (!dir || dir->files.find(path) == dir->files.end()) {
                cout << "Doesn't find file : " << path << endl;
                return false;
            }
            else {
                file = dir->files[path];
            }

        }
        if (!file) return false;
        file->userPermissions[username] = perms;
        return true;
    }

    bool revokeFilePermission(const string& filepath, const string& username, const vector<Permission>& perms, User* currentUser) {
        if (!isUserAuthenticated(currentUser)) {
            return false;
        }
        if (currentUser->getUsername() != "root") {
            cerr << "Only admin can revoke permissions.\n";
            return false;
        }
        else {
            Directory* dir = (filepath[0] == '/') ? root : currentDirectory;
            File* file;
            if (filepath[0] == '/') {
                string name;
                dir = traversePath(filepath, name);
                if (!dir || dir->files.find(name) == dir->files.end()) {
                    cout << "Doesn't find file : " << filepath << endl;
                    return false;
                }
                file = dir->files[name];
            }
            else {
                if (!dir || dir->files.find(filepath) == dir->files.end()) {
                    cout << "Doesn't find file : " << filepath << endl;
                    return false;
                }
                file = dir->files[filepath];
            }

            // ���������ļ���Ȩ��
            revokePermissionsFromFile(file, username, perms);
            return true;
        }
    }
    void revokePermissionsForAllFiles(const string& username, const vector<Permission>& perms) {
        revokePermissionsInDirectory(root, username, perms);
    }
    void setPermissionsForAllFiles(const string& username, const vector<Permission>& perms) {
        setPermissionsInDirectory(root, username, perms);
    }
private:
    vector<Block> disk;    //���̿�
    vector<bool> freeBlocks;//��־�Ƿ����
    //��ʼ��
    void initializeDirectories() {
        Directory* home = new Directory("home", root);
        Directory* bin = new Directory("bin", root);
        Directory* user = new Directory("user", root);
        root->directories["home"] = home;
        root->directories["bin"] = bin;
    }
    Directory* currentDirectory;
    int allocateBlock() {
        for (int i = 0; i < freeBlocks.size(); ++i) {
            if (freeBlocks[i]) {
                freeBlocks[i] = false;
                return i;
            }
        }
        return -1;
    }
    void freeBlock(int blockNum) {
        freeBlocks[blockNum] = true;
        disk[blockNum] = {};
    }
    //����·���ҵ�Directory��root/currentDirectory;ͬʱ֧�־���·�������·����Ŀǰ�޵ݹ飩
    Directory* navigate(const string& path) {
        istringstream iss(path);
        string token;
        Directory* dir = (path[0] == '/') ? root : currentDirectory;

        while (getline(iss, token, '/')) {
            if (token == "" || token == ".") continue;
            if (token == "..") {
                if (dir->parent) dir = dir->parent;
            }
            else {
                if (dir->directories.find(token) != dir->directories.end()) {
                    dir = dir->directories[token];
                }
                else {
                    return nullptr;
                }
            }
        }
        return dir;
    }
    //����·��Ѱ��name,����Ŀ��Ŀ¼
    Directory* traversePath(const string& path, string& name) {
        // ����·������Ŀ¼�ṹ������Ŀ��Ŀ¼���ļ�/Ŀ¼��
        Directory* current = root;
        size_t pos = 0, found;
        while ((found = path.find('/', pos)) != path.npos) {
            string dirName = path.substr(pos, found - pos);
            pos = found + 1;
            if (dirName.empty()) continue;
            if (current->directories.find(dirName) == current->directories.end()) {
                return nullptr;
            }
            current = current->directories[dirName];
        }
        name = path.substr(pos);
        return current;
    }
    // �ж��û��Ƿ���֤�ĺ���
    bool isUserAuthenticated(const User* user) const {

        if (user == nullptr) {
            cerr << "User not authenticated.\n";
            return false;
        }
        return true;
    }
    void setPermissionsInDirectory(Directory* dir, const string& username, const vector<Permission>& perms) {
        for (auto& filePair : dir->files) {
            filePair.second->userPermissions.insert({ username, perms });
        }
        for (auto& dirPair : dir->directories) {
            setPermissionsInDirectory(dirPair.second, username, perms);
        }
    }
    void revokePermissionsInDirectory(Directory* dir, const string& username, const vector<Permission>& perms) {
        for (auto& filePair : dir->files) {
            revokePermissionsFromFile(filePair.second, username, perms);
        }
        for (auto& dirPair : dir->directories) {
            revokePermissionsInDirectory(dirPair.second, username, perms);
        }
    }
    void revokePermissionsFromFile(File* file, const string& username, const vector<Permission>& perms) {
        auto it = file->userPermissions.find(username);
        if (it != file->userPermissions.end()) {
            auto& userPerms = it->second;
            for (const auto& perm : perms) {
                auto permIt = find(userPerms.begin(), userPerms.end(), perm);
                if (permIt != userPerms.end()) {
                    userPerms.erase(permIt);
                }
            }
        }
    }
};

void showHelp() {
    cout << "Commands:" << endl;
    cout << "  useradd  username userpassword - Register user" << endl;
    cout << "  login   username userpassword - Login user" << endl;
    cout << "  grant   username path/all permission - Grant permission READ/WRITE/EXECUTE" << endl;
    cout << "  revoke  username path/all permission - Revoke permission READ/WRITE/EXECUTE" << endl;
    cout << "  mkdir (<path>) - Create directory" << endl;
    cout << "  rmdir (<path>) - Remove directory" << endl;
    cout << "  create (<path>) - Create file" << endl;
    cout << "  rm (<path>) - Delete file" << endl;
    cout << "  ls  - List directory" << endl;
    cout << "  edit ��<path>�� <data> - Write to file" << endl;
    cout << "  read  (<path>�� - Read file" << endl;
    cout << "  showblock - Show Block State" << endl;
    cout << "  help - Show this help message" << endl;
    cout << "  exit - Exit" << endl;
}

vector<string> split(const string& str, char delimiter) {
    vector<string> tokens;
    string token;
    istringstream tokenStream(str);
    while (getline(tokenStream, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}

vector<string> split(const string& str) {
    vector<string> result;
    istringstream iss(str);
    string word;
    while (iss >> word) {
        result.push_back(word);
    }
    return result;
}
int main() {
    Manager userManager;  // �����û�����������
    User* currentUser = nullptr; // ��ǰ��¼�û�ָ�룬��ʼ��Ϊ��
    string admin = "root";
    string adminPass = "123";
    userManager.registerUser(admin, adminPass); // ע�����Ա�û�
    FileSystem fs(userManager);
    string command;
    {
        showHelp();
        while (true) {
            if (currentUser == nullptr)cout << "#";
            else {
                cout << currentUser->getUsername();
            }
            cout << fs.pwd() << " $ ";
            getline(cin, command);
            vector<string> tokens = split(command, ' ');
            if (tokens.empty()) {
                cout << "Invalid command format" << endl;
                continue;
            }
            string cmd = tokens[0];
            string path;
            string data;
            if (tokens.size() > 1) {
                path = tokens[1];
            }
            // �ϲ�ʣ��Ĳ�����Ϊ����
            for (size_t i = 2; i < tokens.size(); ++i) {
                if (!data.empty()) {
                    data += " ";
                }
                data += tokens[i];
            }

          //  cout << "Command: " << cmd ;cout << "\tPath: " << path; cout << "\tData: " << data << endl;
            if (cmd == "mkdir") {
                fs.mkdir(path, currentUser);
            }
            else if (cmd == "useradd") {
                userManager.registerUser(path, data);
            }
            else if (cmd == "edit") {
                fs.editFile(path, currentUser);
            }
            else if (cmd == "login") { // ����ǵ�¼����
                currentUser = userManager.loginUser(path, data); // �����û���������¼�û�
                if (currentUser) { // �����¼�ɹ�
                    cout << "User logged in: " << path << "\n"; // �����¼�ɹ���Ϣ
                }
            }
            else if (cmd == "grant") { // ���������Ȩ������
                string mydata = path + " " + data;
                vector<string> tokens = split(mydata);
                if (tokens.size() < 3) {
                    cerr << "Invalid grant command format.\n";
                    return 1;
                }
                string username = tokens[0];
                string filepath = tokens[1];
                vector<Permission> perms;
                for (size_t i = 2; i < tokens.size(); ++i) {
                    if (tokens[i] == "READ") {
                        perms.push_back(Permission::READ);
                    }
                    else if (tokens[i] == "WRITE") {
                        perms.push_back(Permission::WRITE);
                    }
                    else if (tokens[i] == "EXECUTE") {
                        perms.push_back(Permission::EXECUTE);
                    }
                    else {
                        cout << "Unknown permission: " << tokens[i] << "\n";
                    }
                }
                if (currentUser!=nullptr && currentUser->getUsername() == "root") {
                    if (filepath == "all") {
                        fs.setPermissionsForAllFiles(username, perms);
                        cout << "Permissions set for user: " << username << " on all files \n";
                    }
                    else if (fs.setFilePermission(filepath, username, perms, currentUser)) {
                        cout << "Permissions set for user: " << username << " on file: " << filepath << "\n";
                    }
                    else {
                        cerr << "Failed to set permissions.\n";
                    }
                }
                else {
                    cerr << "Only admin can set permissions.\n";
                }
            }
            else if (cmd == "revoke") { // ����ǳ���Ȩ������
                string mydata = path + " " + data;
                vector<string> tokens = split(mydata);
                if (tokens.size() < 3) {
                    cerr << "Invalid grant command format.\n";
                    return 1;
                }
                string username = tokens[0];
                string filepath = tokens[1];
                vector<Permission> perms;
                for (size_t i = 2; i < tokens.size(); ++i) {
                    if (tokens[i] == "READ") {
                        perms.push_back(Permission::READ);
                    }
                    else if (tokens[i] == "WRITE") {
                        perms.push_back(Permission::WRITE);
                    }
                    else if (tokens[i] == "EXECUTE") {
                        perms.push_back(Permission::EXECUTE);
                    }
                    else {
                        cout << "Unknown permission: " << tokens[i] << "\n";
                    }
                }
                if (currentUser != nullptr && currentUser->getUsername() == "root") {
                    if (filepath == "all") {
                        fs.revokePermissionsForAllFiles(username, perms);
                        cout << "Permissions revoke for user: " << username << " on all files \n";
                    }
                    else if (fs.revokeFilePermission(filepath, username, perms, currentUser)) {
                        cout << "Permissions revoke for user: " << username << " on file: " << filepath << "\n";
                    }
                    else {
                        cerr << "Failed to revoke permissions.\n";
                    }
                }
                else {
                    cerr << "Only admin can revoke permissions.\n";
                }
            }
            else if (cmd == "rmdir") {
                if (fs.deleteDirectory(path)) {
                    cout << "Directory deleted: " << path << endl;
                }
                else {
                    cout << "Failed to delete directory: " << path << endl;
                }
            }
            else if (cmd == "cd") {
                fs.cd(path);
            }
            else if (cmd == "create") {
                if (fs.createFile(path,currentUser)) {
                    cout << "File created: " << path << endl;
                }
               
            }
            else if (cmd == "rm") {
                if (fs.deleteFile(path)) {
                    cout << "File deleted: " << path << endl;
                }
               
            }
            else if (cmd == "ls") {
                fs.listDirectory();
            }            
            else if (cmd == "read") {
                string fileData;
                if (fs.readFile(path, fileData,currentUser)) {
                    cout << "File content:\n " << fileData << endl;
                }
               
            }
            else if (cmd == "showblock") {
                fs.showblock();
            }
            else if (cmd == "help") {
                showHelp();
            }
            else if (cmd == "exit") {
                break;
            }
            else {
                cout << "Unknown command: " << cmd << endl;
            }
        }

        return 0;
    }
}
