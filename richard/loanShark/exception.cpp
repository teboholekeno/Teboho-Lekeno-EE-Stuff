#include "exception.h"
#include <iostream>

exception::exception()
{
}

exception::~exception()
{
}

void exception::dateInsertion()
{
    std::cout << "ERROR: incorrect date insertion" << std::endl << std::endl;
}

void exception::File(std::string fileName)
{
        std::cout << "ERROR: " + fileName + " does not exist." << std::endl;
        std::cout << "Ensure the fail is available in the debug folder" << std::endl << std::endl;
}

void exception::IncorrectPassword()
{
    std::cout << "ERROR: incorrect username or password" << std::endl << std::endl;
}

