#ifndef ADDCREDITOR_H
#define ADDCREDITOR_H
#include <memory>
#include <tuple>

struct client{
    std::string name, surname, contact;
    double credit_amount, expected_amount;
    std::string closing_date, open_date;
};

class addCreditor
{
public:
    addCreditor();
    addCreditor(client);
    ~addCreditor();
    void addClientCredit();
    std::tuple <std::string, std::string, std::string> getIdentity();
    std::tuple <double, double> getAmount();
    std::tuple <int ,int ,int> getDate();
    std::tuple <std::string, std::string> stringedDate();
    
private:
    double interest_rate;
    int day, month, year;
    client _client;
    
    void storeClientDetails();
    void createPaymentDate();
    void collectInterest(double&);
};

void addClientPayment();

#endif // ADDCREDITOR_H
