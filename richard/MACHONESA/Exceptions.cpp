#include "Exceptions.h"

Exceptions::Exceptions()
{
}

Exceptions::~Exceptions()
{
}

void Exceptions::PasswordFile() const
{
    cout << "Password File Does not Exist, Ensure it is Inside the Debug Folder" << endl;
}

void Exceptions::PasswordInsertion() const
{
    cout << "You Inserted Incorrect Password" << endl;
}

void Exceptions::IncorrectDate() const
{
    cout << "You Inserted Incorrect Date" << endl;
}

void Exceptions::InterestFile() const
{
    cout << "Interest File Does not Exist, Ensure it is Inside the Debug Folder" << endl;
}

