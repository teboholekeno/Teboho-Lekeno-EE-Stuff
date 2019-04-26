#ifndef GAME_CONTROL_H
#define GAME_CONTROL_H
#include "Game_Board_Management.h"
#include "Current_Playing_Board.h"
#include "Turn_Flanked_Pieces.h"
#include "Algorithm1.h"
#include "Algorithm2.h"
#include "Storage.h"

using namespace std;

class Game_Control
{
public:
    Game_Control();
    ~Game_Control();
    void run();
private:
    Storage storage;
    Game_Board_Management gameBoardManagement;
    Current_Playing_Board currentPlayingBoard;
    Turn_Flanked_Pieces turnFlankedPieces;
    Algorithm1 algorithm1;
    Algorithm2 algorithm2;
};

#endif // GAME_CONTROL_H
