#ifndef SECURITY_H
#define SECURITY_H
#include "Exceptions.h"
#include "keyBoardInput.h"
#include "storageAcess.h"


using namespace std;

struct PasswordPair{
    string password, username;
    bool operator == (const PasswordPair& rhs) {return (password == rhs.password && username == rhs.username);}
};

class security
{
public:
    void validatePassword();
private:
    PasswordPair _PasswordPair;
    storageAcess _storageAcess;
    keyBoardInput _keyBoardInput;
};

#endif // SECURITY_H
