#ifndef GRAPHICS_H
#define GRAPHICS_H
#include <SFML/Graphics.hpp>

class graphics
{
public:
    graphics();
    ~graphics();
    void drawScore(sf::RenderWindow& window, double);
    void drawRedRobot(sf::RenderWindow& window);
    void drawGreenRobot(sf::RenderWindow& window);
    void drawMessage (sf::RenderWindow& window, std::string message);
private:
    sf::Font font;
    sf::Text text, textMessage;
    sf::RectangleShape robot;
};

#endif // GRAPHICS_H
