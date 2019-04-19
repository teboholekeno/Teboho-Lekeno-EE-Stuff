#ifndef CURRENT_PLAYING_BOARD_H
#define CURRENT_PLAYING_BOARD_H
#include <iostream>

using namespace std;

class Current_Playing_Board
{
public:
    Current_Playing_Board(){}
    Current_Playing_Board(int, char, char);
    bool Is_Cell_Empty(int, int) const;
    void Place_Move (int, int, char);
    char Get_Marker(int x, int y) const {return game_grid[x][y];}
    void display() const;
    int Get_Board_Size() const {return size;}
    ~Current_Playing_Board();
private:
    char** game_grid;
    int size;
    void Create_Dynamic_Grid ();
    void Format_Dynamic_Memory ();
    void Add_Algorithms_Markers (char, char);
};



#endif // CURRENT_PLAYING_BOARD_H
