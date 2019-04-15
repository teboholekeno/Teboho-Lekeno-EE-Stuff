#ifndef ALGORITHM1_H
#define ALGORITHM1_H
#include <iostream>
#include <vector>
#include <tuple>
#include "Current_Playing_Board.h"

using namespace std;

struct WinningMove {int x, y, weight;};

class Algorithm1
{
public:
	Algorithm1();
	Algorithm1(int);
    char Get_Marker() const {return marker;}
	void display() const;
    tuple <int, int> Optimal_Move(Current_Playing_Board&) const;
    
	~Algorithm1();
private:
	int size;
    char marker = 'X';
    vector <WinningMove> List_Of_Winning_Moves;
    
	int** playing_grid_clone;
    void Create_Dynamic_Grid ();
    void Format_Dynamic_Memory ();
    void determineWinningMoves(Current_Playing_Board&);
    int Get_Weight (int x, int y) const {return playing_grid_clone[x][y];}
    void Down_Winning (Current_Playing_Board&, int, int);
};


#endif // ALGORITHM1_H
