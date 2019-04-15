#ifndef GAME_PROCESSOR_H
#define GAME_PROCESSOR_H
#include <SFML/Graphics.hpp>
#include "Player.h"
#include "Bullets.h"
#include "Centepede.h"

class Game_Processor
{
public:
    Game_Processor();
    void run();
    ~Game_Processor();
private:
    sf::RenderWindow _window;
};

#endif // GAME_PROCESSOR_H
