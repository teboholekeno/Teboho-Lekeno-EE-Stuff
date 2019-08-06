#ifndef PANEL_SIMULATOR_H
#define PANEL_SIMULATOR_H
#include <bits/stdc++.h>
#include <vector>

using namespace std;

struct Panel_Details
{
	double V_T, Voc, Isc;
};

double valueE(double d){return log(d);}

class Panel_Simulator
{
	public:
		Panel_Simulator();
		void Direct_Charging ();
	private:
		void collect_input ();
		
		double Voco = 22.1;
    	double Vmpp = 18.2;
    	double Isco = 2.95;
    	double Impp = 2.75;
    	double Go = 1000;
    	double To = 25;
    	double Rs;
    	vector <Panel_Details> input_list;
};

#endif
