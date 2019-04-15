#include "Game_Control.h"

Game_Control::Game_Control()
{
}

Game_Control::~Game_Control()
{
}

void Game_Control::run()
{
    for (auto board = 0; board < gameBoardManagement.Get_Board_Size(); board++)   //main loop which changes the game grids.
    {
        bool GameOn = true;
        int cellsFilled = 0;
        currentPlayingBoard = Current_Playing_Board(gameBoardManagement.Get_Board_Size(board)); // creating a board to play the game.
        
        while (GameOn)   //while the game is still one.
        {
            if (cellsFilled % 2 == 0) //algorithms 1 place the move.
            {
                
            }
            else  //algorithm 2 place the move.
            {
                
            }
        }
    }
}

