#ifndef DATE_H
#define DATE_H
#include "Exceptions.h"
#include <memory>
#include <tuple>

enum class MONTH {JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER};

class Date
{
public:
    Date(int, MONTH, int);
    tuple <int, MONTH, int> getDate() const;
    operator == (const Date& rhs);
    Date();
    ~Date();
private:
    int day, year;
    MONTH month;
    bool isValidDate();
    bool isValidDay();
    bool isValidMonth() const;
    bool isValidYear() const;
    bool isLeapYear() const;
    int getNumberOfDaysInMonth();
};

#endif // DATE_H
