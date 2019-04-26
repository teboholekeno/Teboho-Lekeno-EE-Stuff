#ifndef TURN_FLANKED_PIECES_H
#define TURN_FLANKED_PIECES_H
#include "Current_Playing_Board.h"
#include <vector>

struct turnedPiece {int x, y;};
class Turn_Flanked_Pieces
{
public:
    Turn_Flanked_Pieces();
    void Turn_Pieces (Current_Playing_Board&, int, int, char);
    vector <turnedPiece> Get_Turn_Pieces_List();
    ~Turn_Flanked_Pieces();
private:
    void Turn_Pieces_Horizontal_Right (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Horizontal_Left (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Vertical_Down (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Vertical_Up (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Diagonal_N_Down (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Diagonal_N_Up (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Diagonal_P_Down (Current_Playing_Board&, int, int, char);
    void Turn_Pieces_Diagonal_P_Up (Current_Playing_Board&, int, int, char);
    vector <turnedPiece> turnedPieces;
    void Format_List_Of_Turn_Coins();
};

#endif // TURN_FLANKED_PIECES_H
