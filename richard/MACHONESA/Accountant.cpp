#include "Accountant.h"
#include "Exceptions.h"
#include <fstream>

using namespace std;

Accountant::Accountant()
{
    collectInterest();
}

Accountant::~Accountant()
{
}

double Accountant::amountPlusInterest(double amount)
{
    return amount*(1+interest);
}

void Accountant::collectInterest()
{
    ifstream infile("interest.txt");

    try {
        if(infile.good())
            infile >> interest;
        else
            throw Exceptions();
    } catch(Exceptions e) {
        e.InterestFile();
    }

    infile.close();
}

