#include "Date.h"

Date::Date()
{
}

Date::Date(int day_, MONTH month_, int year_): day(day_), month(month_), year(year_)
{
    try {
        if(!isValidDate())
            throw Exceptions();
    } catch(Exceptions e) {
        e.IncorrectDate();
    }
}

Date::~Date()
{
}

bool Date::isValidDate()
{
    return (isValidDay() && isValidMonth() && isValidYear());
}

bool Date::isValidDay()
{
    return (day >= 1 && day <= getNumberOfDaysInMonth());
}

bool Date::isValidMonth() const
{
    return (static_cast<int>(month) >= 0 && static_cast<int>(month) <= 11);
}

bool Date::isValidYear() const
{
    return (year >= 0);
}

bool Date::isLeapYear() const
{
    return (year % 4 == 0);
}

int Date::getNumberOfDaysInMonth()
{
    if(month == MONTH::JANUARY || month == MONTH::MARCH || month == MONTH::MAY || month == MONTH::JULY ||
        month == MONTH::AUGUST || month == MONTH::OCTOBER || month == MONTH::DECEMBER)
        return 31;
    else if(month == MONTH::FEBRUARY && isLeapYear())
        return 29;
    else if(month == MONTH::FEBRUARY && !isLeapYear())
        return 28;
    else
        return 30;
}

tuple <int, MONTH, int> Date::getDate() const
{
    return make_tuple (day, month, year);
}

Date::operator == (const Date& rhs)
{
    return (day == get<0>(rhs.getDate()) && month == get<1>(rhs.getDate()) && year == get<2>(rhs.getDate()));
}
