#include "Administrator.h"
#include <fstream>

Administrator::Administrator()
{
}

Administrator::~Administrator()
{
}

void Administrator::addClient()
{
    string name, surname, contact;
    int month, day, year;
    double amount_taken, amount_expected;

    _keyBoardInput.insertCreditorIdentity(name, surname, contact);
    _keyBoardInput.insertCreditedAmount(amount_taken);
    _keyBoardInput.insertCreditorClosingDate(day, month, year);

    auto object = clientObject(name, surname, contact, amount_taken);
    object.setClosingDate(day, static_cast<MONTH>(month - 1), year);
    _storageAcess.storeCredit(object);
}
