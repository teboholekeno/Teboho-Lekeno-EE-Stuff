#ifndef STORAGE_H
#define STORAGE_H
#include <string>
#include "Turn_Flanked_Pieces.h"
#include "Current_Playing_Board.h"
#include "Algorithm1.h"
#include "Algorithm2.h"

using namespace std;

class Storage
{
public:
    Storage();
    void Store_Current_Board_Size(int);
    void Store_Coordinates_Played(string, int, int);
    void Store_Turned_Coordinates(vector <turnedPiece>);
    void Store_Winning_Details (Current_Playing_Board, Algorithm1, Algorithm2);
    ~Storage();
private:
    void Format_Storage_File();
};

#endif // STORAGE_H
