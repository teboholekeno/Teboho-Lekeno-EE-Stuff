#ifndef CLIENTOBJECT_H
#define CLIENTOBJECT_H
#include "Date.h"
#include "Accountant.h"
#include <string>

using namespace std;

struct client {
    string name, surname, contact;
    double credit, expected = 0;
};
struct clientDates {
    Date opening, closing;
};

class clientObject
{
public:
    clientObject(string, string, string, double);
    void setOpeningDate(int, MONTH, int);
    void setClosingDate(int, MONTH, int);
    clientDates getDates() const { return _clientDates; }
    client getIdentity() const { return _client;}
    ~clientObject();
private:
    client _client;
    clientDates _clientDates;
    Accountant _Accountant;
};

#endif // CLIENTOBJECT_H
