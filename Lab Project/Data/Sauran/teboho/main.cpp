#include <iostream>
#include <fstream>
#include <bits/stdc++.h>

using namespace std;

double valueE(double d)
{
    return log(d);
}

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

        if (Isc > 0)
        {
            outfile << V_T << " " << Voc << " " << Isc << endl;

            for (double I = 0; I < Isc; I = I+0.00001)
            {

                V = Voc+V_T*valueE(1-(I/Isc))-Rs*I;

                if (V>=12 && V<=12.2)
                {
                    power+= V*I;
                    counter++;
                }

                outfile << I << " " << V << endl;

                if (I + 0.00001 >= Isc)
                {
                    while (true)
                    {
                        V -= 0.1;
                        if (V>=12 && V<=12.2)
                        {
                            power+= V*Isc;
                            counter++;
                        }

                        outfile << Isc << " " << V << endl;
                        if (V <= 0)
                            break;
                    }
                }
            }
            outfile << endl << endl << endl;
        }
    }

    cout << power << endl;

    return 0;
}
