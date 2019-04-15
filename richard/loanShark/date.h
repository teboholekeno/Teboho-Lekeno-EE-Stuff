#ifndef DATE_H
#define DATE_H
#include <string>

class date
{
public:
    date(){}
    date(int& , int& , int& );
    bool operator == (const date& rhs);
    bool operator > (const date& rhs);
    void updateTime();
    ~date();
    
private:
    void collectDate();
    void convertStringMonth (std::string, int&);

    int day, month, year;
    bool isCorrectDay();
    bool isCorrectMonth();
    bool isCorrectYear();
    bool isLeapYear();
};

#endif // DATE_H
