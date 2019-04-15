#include "clientObject.h"

clientObject::~clientObject()
{
}

void clientObject::setOpeningDate(int day, MONTH month, int year)
{
    _clientDates.opening = Date(day, month, year);
}

void clientObject::setClosingDate(int day, MONTH month, int year)
{
    _clientDates.closing = Date(day, month, year);
}

clientObject::clientObject(string name_ = " ", string surname_ = " ", string contact_ = " ", double credit_ = 0)
    : _client{ name_, surname_, contact_, credit_ }
{
    _client.expected = _Accountant.amountPlusInterest(_client.credit);
}