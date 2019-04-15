#ifndef GAME_CONTROL_H
#define GAME_CONTROL_H
#include "Game_Board_Management.h"
#include "Current_Playing_Board.h"

class Game_Control
{
public:
    Game_Control();
    ~Game_Control();
    void run();
private:
    Game_Board_Management gameBoardManagement;
    Current_Playing_Board currentPlayingBoard;
};

#endif // GAME_CONTROL_H
