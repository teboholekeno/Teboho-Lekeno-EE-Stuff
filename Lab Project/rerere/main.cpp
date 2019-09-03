#include <iostream>
#include "Panel_Simulator.h"

using namespace std;

int main()
{
    
	Panel_Simulator panel_simulator;
	
	panel_simulator.Direct_Charging();
	panel_simulator.MPPT_Charging ();
	
    return 0;
}

