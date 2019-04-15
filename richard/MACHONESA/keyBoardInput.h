#ifndef KEYBOARDINPUT_H
#define KEYBOARDINPUT_H
#include <string>

using namespace std;

class keyBoardInput
{
public:
    keyBoardInput();
    ~keyBoardInput();
    void insertCreditorIdentity(string&, string&, string&);
    void insertCreditorClosingDate(int&, int&, int&);
    void insertCreditedAmount(double&);
    void insertPassWord(string&, string&);

private:
};

#endif // KEYBOARDINPUT_H
