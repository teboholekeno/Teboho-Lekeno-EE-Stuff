#include "Game_Control.h"

Game_Control::Game_Control()
{
}

Game_Control::~Game_Control()
{
}

void Game_Control::run()
{
    for (auto board = 0; board < gameBoardManagement.Get_Number_Of_Boards(); board++)   //main loop which changes the game grids.
    {
        bool GameOn = true;
        int cellsFilled = 0;
        
        algorithm1 = Algorithm1 (gameBoardManagement.Get_Board_Size(board)); //initializing the first algorithm 
        currentPlayingBoard = Current_Playing_Board(gameBoardManagement.Get_Board_Size(board), algorithm1.Get_Marker(), 'O'); // creating a board to play the game.
        currentPlayingBoard.display();
        
        while (GameOn)   //while the game is still one.
        {
            if (cellsFilled % 2 == 0) //algorithms 1 place the move.
            {
                currentPlayingBoard.Place_Move(algorithm1.Optimal_Move(currentPlayingBoard).x, algorithm1.Optimal_Move(currentPlayingBoard).y, algorithm1.Get_Marker());
                cellsFilled++; 
                currentPlayingBoard.display();
            }
            else  //algorithm 2 place the move.
            {
                
            }
        }
    }
}
