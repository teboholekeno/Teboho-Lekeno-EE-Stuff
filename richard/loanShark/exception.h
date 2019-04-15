#ifndef EXCEPTION_H
#define EXCEPTION_H
#include <string>

class exception
{
public:
    exception();
    ~exception();
    void dateInsertion();
    void File(std::string fileName);
    void IncorrectPassword();
};

#endif // EXCEPTION_H
