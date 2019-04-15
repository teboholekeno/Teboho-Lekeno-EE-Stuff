#include "accountant.h"
#include "exception.h"
#include <cmath>
#include <fstream>
#include <iostream>

accountant::accountant()
{
}

accountant::~accountant()
{
}

void accountant::regulate(std::vector<addCreditor>& creditorsList)
{
    int payerNumber;
    double amount;
    this->creditorsList = creditorsList;

    displayCreditors();
    selectPayer(payerNumber);

    std::cout << "Enter The Amount " << std::get<0>(creditorsList.at(payerNumber - 1).getIdentity()) << " "
              << std::get<1>(creditorsList.at(payerNumber - 1).getIdentity()) << " owes: ";

    std::cin >> amount;

    subtractBackToFile(payerNumber, amount);
}

void accountant::displayCreditors()
{
    for(auto counter = 0; counter < creditorsList.size(); counter++) {
        std::cout << "(" << counter + 1 << ") " << std::get<0>(creditorsList.at(counter).getIdentity()) << " "
                  << std::get<1>(creditorsList.at(counter).getIdentity()) << std::endl;
    }
}

void accountant::selectPayer(int& payerNumber)
{
    std::cout << "Payer Number (E.g: 1, 2 etc): ";
    std::cin >> payerNumber;
}

void accountant::subtractBackToFile(int payerNumber, double amount)
{
    std::ofstream outfile("client.txt");

    try {
        if(outfile.good()) {
            for(auto counter = 0; counter < creditorsList.size(); counter++) {

                if(payerNumber == counter + 1 && amount == std::get<1>(creditorsList.at(counter).getAmount()))
                    continue;
                else if(payerNumber == counter + 1 && amount != std::get<1>(creditorsList.at(counter).getAmount())) {
                    outfile << std::get<0>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<1>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<2>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<0>(creditorsList.at(counter).getAmount()) << " "
                            << std::get<1>(creditorsList.at(counter).getAmount()) - amount << " "
                            << std::get<0>(creditorsList.at(counter).stringedDate()) << "  "
                            << std::get<1>(creditorsList.at(counter).stringedDate()) << std::endl;
                } else if(payerNumber != counter + 1 && amount != std::get<1>(creditorsList.at(counter).getAmount())) {
                    outfile << std::get<0>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<1>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<2>(creditorsList.at(counter).getIdentity()) << " "
                            << std::get<0>(creditorsList.at(counter).getAmount()) << " "
                            << std::get<1>(creditorsList.at(counter).getAmount()) << " "
                            << std::get<0>(creditorsList.at(counter).stringedDate()) << "  "
                            << std::get<1>(creditorsList.at(counter).stringedDate()) << std::endl;
                }
            }
        }
        else throw exception();
    }
    catch(exception e)
    {
        e.File("client.txt");
    }
}
