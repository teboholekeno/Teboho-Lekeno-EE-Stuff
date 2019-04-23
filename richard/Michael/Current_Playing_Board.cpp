#include "Current_Playing_Board.h"

Current_Playing_Board::Current_Playing_Board(int size, char marker1, char marker2)
{
    this->size = size;
    
    Create_Dynamic_Grid ();
    Format_Dynamic_Memory ();
    Add_Algorithms_Markers (marker1, marker2);
}

Current_Playing_Board::~Current_Playing_Board()
{
}

void Current_Playing_Board::Create_Dynamic_Grid ()
{
    game_grid = new char* [size];
    
    for (auto _rows = 0; _rows < size; _rows++)
    {
        game_grid[_rows] = new char [size];
    }
}

void Current_Playing_Board::Format_Dynamic_Memory ()
{
    for (auto rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
            game_grid[rows][columns] = '_';
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
    game_grid [row][column] = marker;
}

void Current_Playing_Board::display() const
{
	for (auto rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
			cout << game_grid[rows][columns] << " ";
        } cout << endl;
    }
}

void Current_Playing_Board::Add_Algorithms_Markers (char marker1, char marker2)
{
    game_grid[size/2][size/2] = marker1;
    game_grid[(size/2)-1][(size/2)-1] = marker1;
    game_grid[(size/2)-1][size/2] = marker2;
    game_grid[size/2][(size/2)-1] = marker2;
}

bool Current_Playing_Board::Is_Board_Full()
{
    for (auto rows = 0; rows < size; rows++)
    {
        for (int columns = 0; columns < size; columns++)
        {
            if (Is_Cell_Empty(rows, columns))
                return false;
        }
    }
    
    return true;           // Will only excecute if the whole board is empty
}

