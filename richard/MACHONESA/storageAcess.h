#ifndef STORAGEACESS_H
#define STORAGEACESS_H
#include "clientObject.h"

class storageAcess
{
public:
    storageAcess();
    ~storageAcess();
    void storeCredit(const clientObject);
    void collectPassword(string& , string&);
private:
};

#endif // STORAGEACESS_H
