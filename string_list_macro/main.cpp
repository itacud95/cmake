
#include <cstdint>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

static auto ReadLibraries() {
    std::cout << "ReadLibraries: " << LIBRARIES << '\n';
    std::istringstream iss(LIBRARIES);
    std::string token;
    char delimiter = ',';
    std::vector<std::string> strings;
    while (std::getline(iss, token, delimiter)) {
        strings.push_back(token);
    }
    return strings;
}

int main() {
    auto libraries = ReadLibraries();    
    for (auto lib : libraries){
        std::cout << "lib: " << lib << '\n';
    }
    return 0;
}
