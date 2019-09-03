#include "Panel_Simulator.h"
#include <fstream>
#include <iostream>

Panel_Simulator::Panel_Simulator()
{
	double Isc, G, Tc, V_T, Voc;
    double power = 0, V(0), I, Rs;
    Rs = Vmpp/Impp - (2*Vmpp-Voco)/(Impp+(Isco-Impp)*valueE(1-(Impp/Isco)));
    
    collect_input ();
}

void Panel_Simulator::collect_input ()
{
	ifstream infile ("input.txt");
	
	while (!infile.eof())
	{
		 Panel_Details panel_details;
		  infile >> panel_details.V_T >> panel_details.Voc >> panel_details.Isc;
		  input_list.push_back(panel_details);
	}
	
	infile.close();
}

void Panel_Simulator::Direct_Charging ()
{
    double power = 0, V(0), I;

    int counter(0);

    ofstream outfile ("V-I characteristics.txt");
    ofstream outfile2 ("Average Power per hour.txt");

    for (int number = 0; number < input_list.size(); number++)
    {
        double iter_p(0);

        if (input_list[number].Isc > 0)
        {

            for (double I = 0; I < input_list[number].Isc; I = I+0.00001)
            {

                V = input_list[number].Voc+input_list[number].V_T*valueE(1-(I/input_list[number].Isc))-Rs*I;

                if (V>=11.9 && V<=12.2)
                {
                    if (V*I > iter_p)
                        iter_p = V*I;
                }

                if (I + 0.00001 >= input_list[number].Isc)
                {
                    while (true)
                    {
                        V -= 0.1;
                        if (V>=11.9 && V<=12.2)
                        {
                            if (V*input_list[number].Isc > iter_p)
                                iter_p = V*I;
                        }

                        if (V <= 0)
                            break;
                    }
                }

                outfile << V << " " << I << endl;
            } outfile << endl << endl << endl;

            power+= iter_p;

            outfile2 << counter << " " << iter_p << endl;
        }
        else
        {
            outfile2 << counter << " " << 0 << endl;
        }

        counter++;
    }

    cout << power << endl;
    outfile2 << power << endl;

    outfile.close();
    outfile2.close();
}

void Panel_Simulator::MPPT_Charging ()
{
	double power = 0, V(0), I;
	
	ofstream outfile2 ("Average Power per hour.txt", ios::out | ios::app);

    for (int number = 0; number < input_list.size(); number++)
    {
        double iter_p(0);

        if (input_list[number].Isc > 0)
        {

            for (double I = 0; I < input_list[number].Isc; I = I+0.00001)
            {

                V = input_list[number].Voc+input_list[number].V_T*valueE(1-(I/input_list[number].Isc))-Rs*I;

                if (V*I > iter_p)
                    iter_p = V*I;
            }

            power+= iter_p;
        }
    }

    cout << power << endl;
    outfile2 << power << endl;
}

