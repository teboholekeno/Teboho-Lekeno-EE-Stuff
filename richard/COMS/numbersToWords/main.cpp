#include <iostream>
#include <vector>

using namespace std;

class EnglishConverter
{
public:
    EnglishConverter();
    void collectUserInput();
    void print();

private:
    vector<string> units{ "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" };
    vector<string> lowerTens{ "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
        "Eighteen", "Nineteen" };
    vector<string> upperTens{ "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };
    vector<string> beyond{ "Hundred", "Thousand" };
    string englishName = "";
    string getEnglishName(int);
    int number;
};

int main()
{
    EnglishConverter englishConverter;

    englishConverter.print();

    return 0;
}

EnglishConverter::EnglishConverter()
{
    collectUserInput();
}

void EnglishConverter::collectUserInput()
{
    while(true) {
        cin >> number;

        if(number >= 0 && number <= 10000)
            break;
    }
}

string EnglishConverter::getEnglishName(int number)
{
    if(number < 10) {
        return units.at(number);
    }

    else if(number < 20) {
        return lowerTens.at(number - 10);
    }

    else if(number < 100) {
        return upperTens.at(number / 10) + ((number % 10 != 0) ? " " + getEnglishName(number % 10) : "");
    } else if(number < 1000) {
        return getEnglishName(number / 100) + " hundred" +
            ((number % 100 != 0) ? " " + getEnglishName(number % 100) : "");
    } else if(number <= 10000) {
        return getEnglishName(number / 1000) + " thousand" +
            ((number % 1000 != 0) ? " " + getEnglishName(number % 1000) : "");
    }
}

void EnglishConverter::print()
{
    cout << getEnglishName(number) << endl;
}

    EnglishConverter();
    void collectUserInput();
    void print();

private:
    vector<string> units{"Zero","One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
    vector<string> lowerTens{"Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen","Sixteen", "Seventeen", "Eighteen", "Nineteen"};
    vector<string> upperTens{"", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};
    vector<string> beyond{ "Hundred", "Thousand" };
    string englishName = "";
    string getEnglishName(int);
    int number;
};

int main()
{
    EnglishConverter englishConverter;

    englishConverter.print();

    return 0;
}

EnglishConverter::EnglishConverter()
{
    collectUserInput();
}

void EnglishConverter::collectUserInput()
{
    while(true) {
        cin >> number;

        if(number >= 0 && number <= 10000)
            break;
    }
}

string EnglishConverter::getEnglishName(int number_)
{
    if(number_ >= 0 && number_ <= 9)
        englishName = units.at(number_);
    else if(number_ >= 10 && number_ <= 19)
        englishName = lowerTens.at(number_ - 10);
    else if(number_ >= 20 && number_ <= 99) {
        englishName = upperTens.at(number_ / 10);

        if(number_ % 10 != 0)
            englishName += " " + units.at(number_ % 10);

    } else if(number_ >= 100 && number_ <= 999) {
        englishName = units.at(number_ / 100) + " " + beyond.at(0);

        if(number_ % 1000 != 0) {
            number_ = number_ % 100;

            if(number_ < 10)
                englishName += " and " + units.at(number_);
            else if(number_ >= 10 && number_ <= 19)
                englishName += " and " + lowerTens.at(number_ - 10);
            else if(number_ >= 20 && number_ <= 99) {
                englishName += " and " + upperTens.at(number_ / 10);

                if(number_ % 10 != 0)
                    englishName += " " + units.at(number_ / 10);
            }
        }

    } else if(number_ >= 1000 && number_ <= 10000) {
        englishName = units.at(number_ / 1000) + " " + beyond.at(1) + ", ";

        if(number_ % 1000 != 0) {
            number_ = number_ % 1000;

            if(number_ < 10)
                englishName += " and " + units.at(number_);
            else if(number_ >= 10 && number_ <= 19)
                englishName += " and " + lowerTens.at(number_ - 10);
            else if(number_ >= 20 && number_ <= 99) {
                englishName += " and " + upperTens.at(number_ / 10);

                if(number_ % 10 != 0)
                    englishName += " " + units.at(number_ / 10);
            } else if(number_ >= 100 && number_ <= 999) {
                englishName += units.at(number_ / 100) + " " + beyond.at(0);

                if(number_ % 1000 != 0) {
                    number_ = number_ % 100;

                    if(number_ < 10)
                        englishName += " and " + units.at(number_);
                    else if(number_ >= 10 && number_ <= 19)
                        englishName += " and " + lowerTens.at(number_ - 10);
                    else if(number_ >= 20 && number_ <= 99) {
                        englishName += " and " + upperTens.at(number_ / 10);

                        if(number_ % 10 != 0)
                            englishName += " " + units.at(number_ / 10);
                    }
                }
            }
        }
    }
    return englishName;
}

void EnglishConverter::print()
{
    cout << getEnglishName(number) << endl;
}