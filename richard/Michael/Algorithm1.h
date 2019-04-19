#ifndef ALGORITHM1_H
#define ALGORITHM1_H
#include <iostream>
#include <vector>
#include <tuple>
#include <memory>
#include "Current_Playing_Board.h"

using namespace std;

struct WinningMove {int x, y, weight;};

class Algorithm1
{
public:
	Algorithm1();
	Algorithm1(int);
    char Get_Marker() const {return marker;}
    WinningMove Optimal_Move(Current_Playing_Board);
	~Algorithm1();
private:
	int size;
    char marker = 'X';
    vector <WinningMove> List_Of_Winning_Moves;
	int** playing_grid_clone;
    
    void Create_Dynamic_Grid ();
    void Format_Dynamic_Memory ();
    void Format_List_Of_Winning_Moves();
    int Get_Weight (int x, int y) const {return playing_grid_clone[x][y];}
    void determineWinningMoves(Current_Playing_Board);
    void Down_Winning (Current_Playing_Board, int, int);
    void Up_Winning (Current_Playing_Board, int, int);
    void Left_Winning (Current_Playing_Board, int, int);
    void Right_Winning (Current_Playing_Board, int, int);
    
};


#endif // ALGORITHM1_H
