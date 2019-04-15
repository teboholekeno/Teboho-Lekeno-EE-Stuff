#include "security.h"
#include <fstream>

void security::validatePassword()
{
    PasswordPair comparator;

    while(true) {
        try {
            _storageAcess.collectPassword(_PasswordPair.username, _PasswordPair.password);
            _keyBoardInput.insertPassWord(comparator.username, comparator.password);

            if(comparator == _PasswordPair)
                break;
            else
                throw Exceptions();
        } catch(Exceptions e) {
            e.PasswordInsertion();
        }
    }
}