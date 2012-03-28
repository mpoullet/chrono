#include <chrono>
#include <iostream>

int main()
{
    std::cout << "begin\n";
    std::chrono::steady_clock::time_point tend = std::chrono::steady_clock::now()
                                               + std::chrono::minutes(1);
    while (std::chrono::steady_clock::now() < tend)
    {
        std::cout << "tick" << std::endl;
    }
    std::cout << "end\n";
}
