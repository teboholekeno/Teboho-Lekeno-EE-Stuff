#include "date.h"
#include "exception.h"
#include <ctime>
#include <fstream>
#include <iostream>
#include <vector>

date::date(int& _day, int& _month, int& _year)
{
    while(true) {
        collectDate();
        try {
            if(isCorrectDay() && isCorrectMonth() && isCorrectYear())
                break;
            else
                throw exception();
        } catch(exception e) {
            e.dateInsertion();
        }
    }

    _day = day;
    _month = month;
    _year = year;
}

date::~date()
{
}

void date::collectDate()
{
    try {
        std::ifstream infile("time.txt");

        if(infile.good()) {
            std::string weekDay, time, _month;
            infile >> weekDay >> _month >> day >> time >> year;
            convertStringMonth(_month, month);
            infile.close();
        } else
            throw exception();
    } catch(exception e) {
        e.File("time.txt");
    }
}

bool date::isLeapYear()
{
    return year % 4 == 0;
}

bool date::isCorrectYear()
{
    return year >= 2019;
}

bool date::isCorrectMonth()
{
    return month >= 1 && month <= 12;
}

bool date::isCorrectDay()
{
    if(day >= 1 && day <= 31) {
        if(month == 2 && isLeapYear())
            return day <= 29;
        else if(month == 2 && !isLeapYear())
            return day <= 28;
        else if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
            return day <= 31;
        else
            return day <= 30;
    }
    return false;
}

bool date::operator==(const date& rhs)
{
    return day == rhs.day && month == rhs.month && year == rhs.year;
}

bool date::operator>(const date& rhs)
{
    if(year > rhs.year) {
        return true;
    } else if(year == rhs.year) {
        if(month > rhs.month)
            return true;
        else if(month == rhs.month) {
            if(day > rhs.day)
                return true;
            return false;
        } else
            return false;
    }
}

void date::updateTime()
{
    const time_t ctt = time(0);

    try {
        std::ofstream outfile("time.txt");

        if(outfile.good()) {
            outfile << asctime(localtime(&ctt)) << std::endl;
            outfile.close();
        } else
            throw exception();
    } catch(exception e) {
        e.File("time.txt");
    }
}

void date::convertStringMonth(std::string monthA, int& monthB)
{
    std::vector<std::string> stringMonth = { "Jan", "Feb", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov",
        "Dec" };

    for(auto counter = 0; counter < stringMonth.size(); counter++) {
        if(monthA == stringMonth.at(counter)) {
            monthB = counter + 1;
            break;
        }
    }
}
