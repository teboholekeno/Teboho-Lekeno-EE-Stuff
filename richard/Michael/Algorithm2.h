#ifndef ALGORITHM2_H
#define ALGORITHM2_H
#include "Current_Playing_Board.h"
#include <vector>

struct WinningMove2 {int x, y;};

class Algorithm2
{
public:
    Algorithm2();
    ~Algorithm2();
    char Get_Marker() const {return marker;}
    WinningMove2 Optimal_Move(Current_Playing_Board);
    string Get_Indentity() const {return identity;}
private:
    char marker = 'O';
    bool winning = false;
    string identity = "alg2";
    
    vector <WinningMove2> List_Of_Winning_Moves;

    void Format_List_Of_Winning_Moves();
    
    void determineWinningMoves(Current_Playing_Board);
    void Down_Winning (Current_Playing_Board, int, int);
    void Up_Winning (Current_Playing_Board, int, int);
    void Left_Winning (Current_Playing_Board, int, int);
    void Right_Winning (Current_Playing_Board, int, int);
    void Diagonal_N_Down_Winning (Current_Playing_Board, int, int);
    void Diagonal_N_Up_Winning (Current_Playing_Board, int, int);
    void Diagonal_P_Down_Winning (Current_Playing_Board, int, int);
    void Diagonal_P_Up_Winning (Current_Playing_Board, int, int);
};

#endif // ALGORITHM2_H
