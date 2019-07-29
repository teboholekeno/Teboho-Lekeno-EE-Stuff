#include <iostream>
#include <fstream>
#include <bits/stdc++.h>

using namespace std;

double valueE(double d){return log(d);}

int main()
{
    double Voco = 22.1;
    double Vmpp = 18.2;
    double Isco = 2.95;
    double Impp = 2.75;
    double Go = 1000;
    double To = 25;

    double Isc, G, Tc, V_T, Voc;
    double power = 0, V(0), I, Rs;
    Rs = Vmpp/Impp - (2*Vmpp-Voco)/(Impp+(Isco-Impp)*valueE(1-(Impp/Isco)));

    int counter(0);

    ifstream infile ("input.txt");
    ofstream outfile ("output.txt");

    while (!infile.eof())
    {
        infile >> V_T >> Voc >> Isc;

        double iter_p(0);

        if (Isc > 0)
        {

            for (double I = 0; I < Isc; I = I+0.00001)
            {

                V = Voc+V_T*valueE(1-(I/Isc))-Rs*I;

                if (V>=11.9 && V<=12.2)
                {
                    if (V*I > iter_p)
                        iter_p = V*I;
                }

                if (I + 0.00001 >= Isc)
                {
                    while (true)
                    {
                        V -= 0.1;
                        if (V>=11.9 && V<=12.2)
                        {
                            if (V*Isc > iter_p)
                                iter_p = V*I;
                        }

                        if (V <= 0)
                            break;
                    }
                }
            }

            power+= iter_p;
        }
    }

    cout << power << endl;

    return 0;
}
