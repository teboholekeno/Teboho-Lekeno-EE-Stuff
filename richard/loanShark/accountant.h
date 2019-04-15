#ifndef ACCOUNTANT_H
#define ACCOUNTANT_H
#include "addCreditor.h"
#include <vector>

class accountant
{
public:
    accountant();
    ~accountant();
    void regulate(std::vector<addCreditor>&);
private:
    std::vector<addCreditor> creditorsList;
    void displayCreditors();
    void selectPayer(int&);
    void subtractBackToFile(int, double);
};

#endif // ACCOUNTANT_H
