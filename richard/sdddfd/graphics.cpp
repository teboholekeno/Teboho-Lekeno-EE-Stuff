#include "graphics.h"
#include <iostream>
#include <sstream>

graphics::graphics()
{
    if(!font.loadFromFile("sansation.ttf")) {
        std::cout << "Font not found";
    }

    text.setFont(font);
    text.setCharacterSize(20);
    text.setPosition(500.f, 0.f);
    text.setFillColor(sf::Color::Red);
    
    textMessage.setFont(font);
    textMessage.setCharacterSize(20);
    textMessage.setPosition(60.f, 0.f);
    textMessage.setFillColor(sf::Color::Blue);

    robot.setSize(sf::Vector2f(50.f, 50.f));
}

graphics::~graphics()
{
}

void graphics::drawScore(sf::RenderWindow& window, double remainingCoal)
{
    std::ostringstream coalOutput;
    coalOutput << remainingCoal;
    text.setString("Remaining Coal: " + coalOutput.str());
    window.clear();
    window.draw(text);
}

void graphics::drawMessage (sf::RenderWindow& window, std::string message)
{
    if (message == "A")
        textMessage.setString("Loading Truck A");
    else if (message == "B")
        textMessage.setString("Loading Truck B");
    else
        textMessage.setString("Exchanging Trucks");
    
    window.draw(textMessage);
    window.display();
}

void graphics::drawRedRobot(sf::RenderWindow& window)
{
    robot.setFillColor(sf::Color::Red);
    window.draw(robot);
}

void graphics::drawGreenRobot(sf::RenderWindow& window)
{
    robot.setFillColor(sf::Color::Green);
    window.draw(robot);
}
