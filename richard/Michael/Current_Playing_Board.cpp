#include "Current_Playing_Board.h"

Current_Playing_Board::Current_Playing_Board(int size)
{
    this->size = size;
    
    Create_Dynamic_Grid (game_grid, size);
    Format_Dynamic_Memory (game_grid, size);
}

Current_Playing_Board::~Current_Playing_Board()
{
}

void Create_Dynamic_Grid (char** A, int size)
{
    A = new char* [size];
    
    for (auto _rows = 0; _rows < size; _rows++)
    {
        A[_rows] = new char [size];
    }
}

void Format_Dynamic_Memory (char** A, int size)
{
    for (auto rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
            A[rows][columns] = '_';
        }
    }
}

bool Current_Playing_Board::Is_Cell_Empty(int row, int column) const
{
    if (game_grid [row][column] == '_')
        return true;
    return false;
}

void Current_Playing_Board::Place_Move (int row, int column, char marker)
{
    game_grid [row][column] == marker;
}

