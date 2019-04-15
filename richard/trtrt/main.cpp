#include <iostream>
#include <vector>

using namespace std;

struct TwoNames
{
   string requiredName;
   string GivenName;
   vector <string> PathToSolution;
};

class Tranversal
{
public:
    Tranversal ();
    void CollectInput();
    void RemoveSpaces(string&);
private:
    TwoNames myTwoName;
};

int main()
{
    TwoNames myTwoNames;
    Tranversal traversal;
    
    traversal.CollectInput();
    return 0;
}

void Tranversal::CollectInput()
{
    string mystring;
    cin >> mystring;
      RemoveSpaces(mystring);
      cout << mystring << endl;
    
}

void Tranversal::RemoveSpaces(string& mystring)
{
    for (auto counter = 0; counter < mystring.size(); counter++)
    {
        if (mystring[counter] == ' ')
            mystring.erase(counter,1);
    }
}