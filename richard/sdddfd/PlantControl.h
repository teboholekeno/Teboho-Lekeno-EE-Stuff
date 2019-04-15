#ifndef PLANTCONTROL_H
#define PLANTCONTROL_H
#include <SFML/Graphics.hpp>
#include <vector>
#include <time.h>
#include "truck.h"
#include "Window_Size.h"
#include "graphics.h"

class PlantControl
{
public:
    PlantControl();
    ~PlantControl();
    void run();
    void loadingTruck(std::string);
    float getTruckDelayTime() const { return truck_delay_time; }
    void truck_Exchange_Delay_Time();
    double getCoalMass() const { return coalMass; }
private:
    std::vector <truck> companyTrucks;
    double coalMass = 7680;
    float truck_delay_time = 5;
    
    Window_Size _Size;
    graphics _graphics;
    sf::RenderWindow window;
};

#endif // PLANTCONTROL_H
