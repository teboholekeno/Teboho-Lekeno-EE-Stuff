#ifndef GAME_H
#define GAME_H
#include <iostream>
#include "Centipede.h"
#include <vector>
#include <time.h>
#include <SFML/Graphics.hpp>
#include "Player.h"
#include "Bullet.h"
#include "Collision.h"
#include "Mushroom.h"
#include "Centipede.h"
#include "Graphics.h"
#include "Graphics.h"

class Game
{
public:
    Game();
    ~Game();
    void run();
private:
    Window_Size _Size;
};

#endif // GAME_H
