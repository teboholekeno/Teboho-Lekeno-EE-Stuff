#ifndef EXCEPTIONS_H
#define EXCEPTIONS_H
#include <iostream>

using namespace std;

class Exceptions
{
public:
    Exceptions();
    void PasswordFile() const;
    void PasswordInsertion() const;
    void IncorrectDate() const;
    void InterestFile() const;
    ~Exceptions();
private:
};

#endif // EXCEPTIONS_H
