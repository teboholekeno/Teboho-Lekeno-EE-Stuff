#ifndef SECURITY_H
#define SECURITY_H
#include <string>

class security
{
public:
    security();
    ~security();
    void passWordRequest();
private:
    void collectPassword();
    std::string username, password;
};

#endif // SECURITY_H
