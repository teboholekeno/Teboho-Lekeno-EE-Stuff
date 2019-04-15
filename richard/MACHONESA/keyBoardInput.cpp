#include "keyBoardInput.h"
#include <iostream>

keyBoardInput::keyBoardInput()
{
}

keyBoardInput::~keyBoardInput()
{
}

void keyBoardInput::insertCreditorIdentity(string& name, string& surname, string& contact)
{
    cout << "Name: ";
    cin >> name;
    cout << "Surname: ";
    cin >> surname;
    cout << "Contact: ";
    cin >> contact;
}

void keyBoardInput::insertCreditorClosingDate(int& day, int& month, int& year)
{
    cout << "Closing Date: ";
    cin >> day >> month >> year;
}

void keyBoardInput::insertCreditedAmount(double& amount)
{
    cout << "Credited Amount: ";
    cin >> amount;
}

void keyBoardInput::insertPassWord(string& username, string& password)
{
    cout << "Enter Your Username: ";
    cin >> username;
    cout << "Enter Password: ";
    cin >> password;
}
