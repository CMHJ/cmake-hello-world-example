#include <iostream>
#include <string>
#include "sqrt.h"

int main(int argc, char const *argv[])
{
    if (argc < 2 || argc > 2){
        std::cout << "Please enter one numerical arugment\n";
        return 1;
    }

    std::cout << cmake::sqrt(std::stod(argv[1])) << '\n';

    return 0;
}
