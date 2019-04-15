#include "addCreditor.h"
#include "date.h"
#include "processor.h"
#include "security.h"
#include <iostream>
#include "graphs.h"

processor::processor()
{
    date _date;
    _date.updateTime();
}

processor::~processor()
{
}

void processor::run()
{
    addCreditor _addCreditor;
    security _security;

    _security.passWordRequest();

    while(true) {
        std::string selection;

        std::cout << "Select The Option Below" << std::endl;
        std::cout << "(A) Add Client Credit"
                  << "        "
                  << "(B) Add Client Payment" << std::endl;
        std::cout << "Selection: ";
        std::cin >> selection;
        std::cout << std::endl;

        if(selection == "A") {
            _addCreditor.addClientCredit();
            break;
        }
        else if (selection == "B")
        {
            addClientPayment();
            break;
        }
        else if (selection == "C")
        {
            BusinessProfile();
            break;
        }
    }
}

void processor::BusinessProfile()
{
    int selection;
    
    std::cout << "Type Of Profile" << std::endl;
    std::cout << "1. Graphical Profile" << std::endl;
    std::cout << "2. Numerical Profile" << std::endl << std::endl;
    
    std::cin >> selection;
    
    if (selection == 1)
    {
        graphs _graphs;
        _graphs.businessProfitGraph();
    }
}
