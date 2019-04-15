#include "accountant.h"
#include "addCreditor.h"
#include "date.h"
#include "exception.h"
#include <fstream>
#include <iostream>
#include <vector>

addCreditor::addCreditor()
{
    collectInterest(interest_rate);
}

addCreditor::addCreditor(client _client)
{
    this->_client = _client;
}

addCreditor::~addCreditor()
{
}

void addCreditor::collectInterest(double& interest_rate)
{
    std::ifstream infile("interest.txt");
    infile >> interest_rate;
    this->interest_rate = interest_rate;
    infile.close();
}

std::tuple<std::string, std::string, std::string> addCreditor::getIdentity()
{
    return make_tuple(_client.name, _client.surname, _client.contact);
}

std::tuple<double, double> addCreditor::getAmount()
{
    return std::make_tuple(_client.credit_amount, _client.expected_amount);
}

void addCreditor::addClientCredit()
{
    std::cout << "Client Name:    ";
    std::cin >> _client.name;
    std::cout << "Client Surname: ";
    std::cin >> _client.surname;
    std::cout << "Contact No.:    ";
    std::cin >> _client.contact;
    std::cout << "Credit Amount:  ";
    std::cin >> _client.credit_amount;
    
    _client.expected_amount = (1 + interest_rate) * _client.credit_amount;
    auto _date = date(day, month, year);

    storeClientDetails();
}

std::tuple<int, int, int> addCreditor::getDate()
{
    return std::make_tuple(day, month, year);
}

std::tuple <std::string, std::string> addCreditor::stringedDate()
{
    return std::make_tuple(_client.open_date, _client.closing_date);
}

void addCreditor::storeClientDetails()
{
    std::ofstream outfile("client.txt", std::ios::out | std::ios::app);

    outfile << std::get<0>(getIdentity()) << " " << std::get<1>(getIdentity()) << " " << std::get<2>(getIdentity())
            << " " << std::get<0>(getAmount()) << " " << std::get<1>(getAmount()) << " " << std::get<0>(getDate())
            << "-" << std::get<1>(getDate()) << "-" << std::get<2>(getDate());

    createPaymentDate();

    outfile << " " << std::get<0>(getDate()) << "-" << std::get<1>(getDate()) << "-" << std::get<2>(getDate())
            << std::endl;
}

void addCreditor::createPaymentDate()
{
    if(month == 12) {
        month = 1;
        year += 1;
    } else
        month += 1;
}

void addClientPayment()
{
    try {
        std::ifstream infile("client.txt");

        std::vector<addCreditor> creditorsList;
        addCreditor addCreditor_;

        if(infile.good()) {
            while(!infile.eof()) {
                std::string date1, date2;
                client Client;

                infile >> Client.name >> Client.surname >> Client.contact >> Client.credit_amount >>
                    Client.expected_amount >> Client.open_date >> Client.closing_date;

                auto Creditor = addCreditor(Client);
                creditorsList.push_back(Creditor);
            } infile.close();

            accountant _accountant;
            _accountant.regulate(creditorsList);

        } else
            throw exception();
    } catch(exception e) {
        e.File("client.txt");
    }
}