#include "storageAcess.h"
#include <fstream>

storageAcess::storageAcess()
{
}

storageAcess::~storageAcess()
{
}

void storageAcess::storeCredit(const clientObject object)
{
    ofstream outfile("creditList.txt", ios::out | ios::app);
    try {
        if(outfile.good()) {
            outfile << object.getIdentity().name << " " << object.getIdentity().surname << " "
                    << object.getIdentity().contact << " " << object.getIdentity().credit << " "
                    << object.getIdentity().expected << " " << get<0>(object.getDates().closing.getDate()) << " "
                    << static_cast<int>(get<1>(object.getDates().closing.getDate())) << " "
                    << get<2>(object.getDates().closing.getDate()) << endl;
        } else
            throw Exceptions();
    } catch(Exceptions e) {
        e.PasswordFile();
    }
    outfile.close();
}

void storageAcess::collectPassword(string& _username, string& _password)
{
    ifstream infile("password.txt");

    try {
        if(infile.good())
            infile >> _username >> _password;
        else
            throw Exceptions();
    } catch(Exceptions e) {
        e.PasswordFile();
    }

    infile.close();
}
