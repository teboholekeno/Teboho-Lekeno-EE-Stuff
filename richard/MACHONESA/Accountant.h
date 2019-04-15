#ifndef ACCOUNTANT_H
#define ACCOUNTANT_H

class Accountant
{
public:
    Accountant();
    ~Accountant();
    double amountPlusInterest(double);
private:
    double interest;
    void collectInterest();
};

#endif // ACCOUNTANT_H
