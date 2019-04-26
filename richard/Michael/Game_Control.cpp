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
        vector <turnedPiece> flipPiecesCoordinates;
        
        algorithm1 = Algorithm1 (gameBoardManagement.Get_Board_Size(board)); //initializing the first algorithm 
        currentPlayingBoard = Current_Playing_Board(gameBoardManagement.Get_Board_Size(board), algorithm1.Get_Marker(), 'O'); // creating a board to play the game.
        storage.Store_Current_Board_Size(currentPlayingBoard.Get_Board_Size());   // store the game size to results.txt
        
        while (GameOn)   //while the game is still one.
        {
            if (cellsFilled % 2 == 0) //algorithms 1 place the move.
            {
                WinningMove bestMove = algorithm1.Optimal_Move(currentPlayingBoard);
                currentPlayingBoard.Place_Move(bestMove.x, bestMove.y, algorithm1.Get_Marker());
                turnFlankedPieces.Turn_Pieces(currentPlayingBoard, bestMove.x, bestMove.y, algorithm1.Get_Marker());
                flipPiecesCoordinates = turnFlankedPieces.Get_Turn_Pieces_List();
                
                if (flipPiecesCoordinates .size() >= 1)
                {
                    storage.Store_Coordinates_Played(algorithm1.Get_Indentity(), bestMove.x, bestMove.y);
                    storage.Store_Turned_Coordinates(flipPiecesCoordinates);
                }
                cellsFilled++; 
            }
            else  //algorithm 2 place the move.
            {
                WinningMove2 move_ = algorithm2.Optimal_Move(currentPlayingBoard);
                currentPlayingBoard.Place_Move(move_.x, move_.y, algorithm2.Get_Marker());
                turnFlankedPieces.Turn_Pieces(currentPlayingBoard, move_.x, move_.y, algorithm2.Get_Marker());
                flipPiecesCoordinates = turnFlankedPieces.Get_Turn_Pieces_List();
                
               if (flipPiecesCoordinates .size() >= 1)
                {
                    storage.Store_Coordinates_Played(algorithm2.Get_Indentity(), move_.x, move_.y);
                    storage.Store_Turned_Coordinates(flipPiecesCoordinates);
                }
                cellsFilled++; 
            }
            
            if (currentPlayingBoard.Is_Board_Full())
            {
                storage.Store_Winning_Details(currentPlayingBoard, algorithm1, algorithm2);
                GameOn = false;
            }
        }
    }
}
