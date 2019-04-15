#include "PlantControl.h"

PlantControl::PlantControl()
{
    auto truckA = truck (400, 10);
    auto truckB = truck (300, 7);
    
    companyTrucks.push_back (truckA);
    companyTrucks.push_back (truckB);
}

PlantControl::~PlantControl()
{
    
}

void PlantControl::run()
{
    while (true)   //terminate when the is no coal left
    {
        
    }
    
}



