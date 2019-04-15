#include <iostream>
#include <memory>
#include <vector>

using namespace std;
//using shared_ptr;


class Sport
{
public:
Sport(string name): name{name}
{ _number_of_sports++; }
string official() { return "Referee"; }
virtual void print() { cout << name << " " << official() << endl; }
static int _number_of_sports;
protected:
string name;
};
int Sport::_number_of_sports = 0;
class Rugby : public Sport
{
public:
Rugby(): Sport{"Rugby"},
_number_of_players{15}
{}
virtual void print() override
{ cout << name << " " << _number_of_players << endl; }
int _number_of_players;
};
class Sevens : public Rugby
{
public:
Sevens()
{ _number_of_players = 7; }
};
class Hockey : public Sport
{
public:
Hockey(): Sport{"Hockey"},
_number_of_players{11}
{}
string official() { return "Umpire"; }
int _number_of_players;
};






int main()
{
using sport_ptr = shared_ptr<Sport>;
vector<sport_ptr> sports;
sports.push_back(make_shared<Hockey>());
sports.push_back(make_shared<Sport>("Croquet"));
sports.push_back(make_shared<Sport>("Running"));
auto a{make_unique<Rugby>()};
auto b{make_unique<Sevens>()};
auto c{make_unique<Hockey>()};
auto d{sports[0]};
cout << "1. " << sports[0]->official() << endl;
cout << "2. " << c->official() << endl;
cout << "3. " << d->official() << endl;
for(auto i : sports) i->print();
cout << "a. "; a->print();
cout << "b. "; b->print();
cout << Sport::_number_of_sports << endl;
cout << "HIFFVMVMVMVMM";
return 0;
}