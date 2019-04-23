#include "Game_Control.h"
#include <cmath>

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
                WinningMove bestMove = WinningMove{algorithm1.Optimal_Move(currentPlayingBoard).x, algorithm1.Optimal_Move(currentPlayingBoard).y};
                currentPlayingBoard.Place_Move(bestMove.x, bestMove.y, algorithm1.Get_Marker());
                turnFlankedPieces.Turn_Pieces(currentPlayingBoard, bestMove.x, bestMove.y, algorithm1.Get_Marker());
                cellsFilled++; 
                currentPlayingBoard.display();
            }
            else  //algorithm 2 place the move.
            {
                Move move_ = algorithm2.Optimal_Move(currentPlayingBoard);
                currentPlayingBoard.Place_Move(move_.x, move_.y, algorithm2.Get_Marker());
                turnFlankedPieces.Turn_Pieces(currentPlayingBoard, move_.x, move_.y, algorithm2.Get_Marker());
                currentPlayingBoard.display(); cout << endl;
                cellsFilled++; 
                
            }
            
            if (currentPlayingBoard.Is_Board_Full())
                GameOn = false;
        }
    }
}
