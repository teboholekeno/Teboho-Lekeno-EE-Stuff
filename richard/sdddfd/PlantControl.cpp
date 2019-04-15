#include "PlantControl.h"
#include <iostream>


PlantControl::PlantControl()
{
    auto trackA = truck(9.36946, 0.00426 * 3600);
    auto trackB = truck(30, 0.014751 * 3600);

    companyTrucks.push_back(trackA);
    companyTrucks.push_back(trackB);
}

PlantControl::~PlantControl()
{
}

void PlantControl::run()
{
    window.create(sf::VideoMode(_Size.Get_Window_Dimensions()._width, _Size.Get_Window_Dimensions()._height, 32), "CENTIPEDE",
    sf::Style::Titlebar | sf::Style::Close);

    while(window.isOpen()) {
        sf::Event Event;
        while(window.pollEvent(Event)) {
            switch(Event.type) {
            case sf::Event::Closed:
                window.close();
            }
            
            _graphics.drawScore(window,getCoalMass());

            while(getCoalMass() > 0) {
                loadingTruck("A");
                truck_Exchange_Delay_Time();
                loadingTruck("B");
                truck_Exchange_Delay_Time();
            }
        }
    }
}

void PlantControl::loadingTruck(std::string S)
{
    clock_t start_time = clock();
    int counter;
    
    if (S == "A") counter = 0;
    else counter = 1;

    std::cout << "loading truck" + S << std::endl;
    
    _graphics.drawScore(window,getCoalMass());
    _graphics.drawRedRobot(window);
    _graphics.drawMessage(window, S);
    
    while(true) {
        if(((clock() - start_time) / 1000) >= companyTrucks.at(counter).getTime()) {
            coalMass -= companyTrucks.at(counter).getMass();
            std::cout << "Loading time: " << (clock() - start_time) / 1000 << std::endl;
            std::cout << "Remaining Coal: " << getCoalMass() << std::endl << std::endl;
            break;
        }
    }
    
    _graphics.drawScore(window,getCoalMass());
    _graphics.drawGreenRobot(window);
    _graphics.drawMessage(window, S);
}

void PlantControl::truck_Exchange_Delay_Time()
{
    clock_t start_time = clock();

    std::cout << "Valve Closed" << std::endl;

    while(true) {
        if(((clock() - start_time) / 1000) >= getTruckDelayTime()) {
            break;
        }
    }

    std::cout << "Valve Open" << std::endl;
}


