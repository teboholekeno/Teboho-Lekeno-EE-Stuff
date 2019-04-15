#include "exception.h"
#include "security.h"
#include <fstream>
#include <iostream>

security::security()
{
    collectPassword();
}

security::~security()
{
}

void security::collectPassword()
{
    try {
        std::ifstream infile("password.txt");

        if(!infile.good())
            throw exception();
        else {
            infile >> username >> password;
            infile.close();
        }

    } catch(exception e) {
        e.File("password.txt");
    }
}

void security::passWordRequest()
{
    std::string _username, _password;

    while(true) {
        try {
            std::cout << "Security Requirements" << std::endl;
            std::cout << "Username:       ";
            std::cin >> _username;
            std::cout << "Password:       ";
            std::cin >> _password;
            std::cout << std::endl;

            if(username == _username && password == _password) {
                break;
            } else
                throw exception();
        } catch(exception e) {
            e.IncorrectPassword();
        }
    }
}
