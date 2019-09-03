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
		void MPPT_Charging ();
	private:
		void collect_input ();
		
		double Voco = 21.6;
    	double Vmpp = 18;
    	double Isco = 2.42;
    	double Impp = 2.22;
    	double Go = 1000;
    	double To = 25;
    	double Rs;
    	vector <Panel_Details> input_list;
};

#endif

