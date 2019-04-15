#ifndef ADMINISTRATOR_H
#define ADMINISTRATOR_H
#include "storageAcess.h"
#include "keyBoardInput.h"

class Administrator
{
public:
    Administrator();
    void addClient();
    ~Administrator();
private:
    clientObject _clientObject;
    storageAcess _storageAcess;
    keyBoardInput _keyBoardInput;
};

#endif // ADMINISTRATOR_H
