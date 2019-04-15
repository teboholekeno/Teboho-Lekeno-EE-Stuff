#ifndef MOVEMENT_H
#define MOVEMENT_H
#include <SFML/Graphics.hpp>
#include "Window_Size.h"
#include <iostream>

class Movement
{
public:
    Movement();
    ~Movement();
    void moveUp (float);
    void moveDown (float);
    void moveLeft (float);
    void moveRight(float);
    bool IsLeftValid();
    bool isRightValid();
protected:
    sf::RenderWindow _window;
};

#endif // MOVEMENT_H
