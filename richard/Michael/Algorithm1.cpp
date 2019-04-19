#include "Algorithm1.h"

Algorithm1::Algorithm1()
{
}

Algorithm1::~Algorithm1()
{
}

Algorithm1::Algorithm1(int size)
{
    this->size = size;
    
    Create_Dynamic_Grid ();
    Format_Dynamic_Memory ();
}

void Algorithm1::Create_Dynamic_Grid ()
{
    playing_grid_clone = new int* [size];
    
    for (int _rows = 0; _rows < size; _rows++)
    {
        playing_grid_clone[_rows] = new int [size];
    }
}

void Algorithm1::Format_Dynamic_Memory ()
{
    for (int rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
            if ((rows == 0  || rows == size -1 )&& (columns == 0 || columns == size - 1))
			{
				playing_grid_clone[rows][columns] = 100;
			}
			else if ((rows == 1 || rows == size -2)&& (columns == 1 || columns == size - 2))
			{
				playing_grid_clone[rows][columns] = -50;
			}
            else if (((rows == 0 || rows == size -1 || rows == size -2)&& (columns == 1 || columns == size - 2))||
            ((columns == 0 || columns == size -1 || columns == size -2)&& (rows == 1 || rows == size - 2)))
            {
                playing_grid_clone[rows][columns] = -20;
            }
			else if (((rows == 0 || rows == size -1)&& (columns == 2 || columns == size - 3))||
            ((columns == 0 || columns == size -1)&& (rows == 2 || rows == size - 3)))
			{
				playing_grid_clone[rows][columns] = 10;
			}
			else if (((rows >= 3 && rows <= size -4) && (columns == 0 || columns == size -1))||
			((columns >= 3 && columns <= size -4) && (rows == 0 || rows == size -1)))
			{
				playing_grid_clone[rows][columns] = 5;
			}
            else if (((rows == 1 || rows == size - 2) && (columns >= 2 && columns <= size -3))||
			((columns == 1 || columns == size -2) && (rows >= 2 && rows <= size -3)))
			{
				playing_grid_clone[rows][columns] = -2;
			}
			else
			{
				playing_grid_clone[rows][columns] = -1;
			}
        }
    }
}

void Algorithm1::determineWinningMoves(Current_Playing_Board E)
{
    for (int rows = 0; rows < size; rows++)
    {
        for (int columns = 0; columns < size; columns++)
        {
            if (E.Is_Cell_Empty(rows, columns))            //prevents replacing the cell already played.
            {
                Down_Winning (E, rows, columns); 
                Up_Winning (E, rows, columns); 
                Right_Winning (E, rows, columns); 
                Left_Winning (E, rows, columns); 
            }
        }
    }
}

void Algorithm1::Down_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _rows = rows+1; _rows < size; _rows++) //downwards (checking if there are available coins in a column)
    {
        if (E.Get_Marker(_rows, columns) == marker || E.Get_Marker(_rows, columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(_rows, columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
                cout << "Winning found Down" << endl;
                break;
            }
            else
                break;                            // breaking the loop if the next coin from checked cell is of the same kind.
        }
        else if (E.Get_Marker(_rows, columns) != marker && E.Get_Marker(_rows, columns) != '_' )
            counterDown++;                           // helps determine existing coins to be turned
    }
             
    if (counterDown >= 1 && encloseFound == true) // there exist coins to be turned
    { 
        auto obtainedMove = WinningMove {rows, columns, Get_Weight (rows, columns)};
        List_Of_Winning_Moves.push_back(obtainedMove); 
        cout<< "Winning Down: " << rows << " " << columns << endl;
    }
}

void Algorithm1::Up_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _rows = rows-1; _rows >= 0; _rows--) //upwards (checking if there are available coins in a column)
    {
        if (E.Get_Marker(_rows, columns) == marker || E.Get_Marker(_rows, columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(_rows, columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
                cout << "Winning found Up" << endl;
                break;
            }
            else
                break;                            // breaking the loop if the next coin from checked cell is of the same kind.
        }
        else if (E.Get_Marker(_rows, columns) != marker && E.Get_Marker(_rows, columns) != '_' )
            counterDown++;                           // helps determine existing coins to be turned
    }
             
    if (counterDown >= 1 && encloseFound == true) // there exist coins to be turned
    { 
        auto obtainedMove = WinningMove {rows, columns, Get_Weight (rows, columns)};
        List_Of_Winning_Moves.push_back(obtainedMove); 
        
        cout<< "Winning Up: " << rows << " " << columns << endl;
    }
}

void Algorithm1::Left_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _columns = columns-1; _columns >= 0; _columns--) //upwards (checking if there are available coins in a column)
    {
        if (E.Get_Marker(rows, _columns) == marker || E.Get_Marker(rows, _columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(rows, _columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
                cout << "Winning found Left" << endl;
                break;
            }
            else
                break;                            // breaking the loop if the next coin from checked cell is of the same kind.
        }
        else if (E.Get_Marker(rows, _columns) != marker && E.Get_Marker(rows, _columns) != '_' )
            counterDown++;                           // helps determine existing coins to be turned
    }
             
    if (counterDown >= 1 && encloseFound == true) // there exist coins to be turned
    { 
        auto obtainedMove = WinningMove {rows, columns, Get_Weight (rows, columns)};
        List_Of_Winning_Moves.push_back(obtainedMove); 
        
        cout<< "Winning Left: " << rows << " " << columns << endl;
    }
}

void Algorithm1::Right_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _columns = columns+1; _columns < size; _columns++) //right (checking if there are available coins in a column)
    {
        if (E.Get_Marker(rows, _columns) == marker || E.Get_Marker(rows, _columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(rows, _columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
                cout << "Winning found Right" << endl;
                break;
            }
            else
                break;                            // breaking the loop if the next coin from checked cell is of the same kind.
        }
        else if (E.Get_Marker(rows, _columns) != marker && E.Get_Marker(rows, _columns) != '_' )
            counterDown++;                           // helps determine existing coins to be turned
    }
             
    if (counterDown >= 1 && encloseFound == true) // there exist coins to be turned
    { 
        auto obtainedMove = WinningMove {rows, columns, Get_Weight (rows, columns)};
        List_Of_Winning_Moves.push_back(obtainedMove); 
        cout<< "Winning Right: " << rows << " " << columns << endl;
    }
}

void Algorithm1::Format_List_Of_Winning_Moves()
{
    for (int counter = List_Of_Winning_Moves.size() - 1; counter >= 0; counter--)
    {
             if( List_Of_Winning_Moves.size()  != 0)
                List_Of_Winning_Moves.erase(List_Of_Winning_Moves.begin() + counter);
    }
}

WinningMove Algorithm1::Optimal_Move(Current_Playing_Board E)
{
    determineWinningMoves(E);
    
    WinningMove best_move = List_Of_Winning_Moves[0];
    
    for (int counter = 0; counter < List_Of_Winning_Moves.size(); counter++)
    {
        if (best_move.weight < List_Of_Winning_Moves[counter].weight)
            best_move = List_Of_Winning_Moves[counter];
    }
    
    cout << "Best Move Selected: " << best_move.x << " " << best_move.y << endl;
    Format_List_Of_Winning_Moves();
    
    return best_move;
}




