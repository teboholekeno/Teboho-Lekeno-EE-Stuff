#include "Algorithm2.h"
#include <stdlib.h> 
#include <time.h>

Algorithm2::Algorithm2()
{
}

Algorithm2::~Algorithm2()
{
}

void Algorithm2::determineWinningMoves(Current_Playing_Board E)
{
    
    for (int rows = 0; rows < E.Get_Board_Size(); rows++)
    {
        for (int columns = 0; columns < E.Get_Board_Size(); columns++)
        {
            if (E.Is_Cell_Empty(rows, columns))            //prevents replacing the cell already played.
            {
                Down_Winning (E, rows, columns); 
                Up_Winning (E, rows, columns); 
                Right_Winning (E, rows, columns); 
                Left_Winning (E, rows, columns); 
                Diagonal_N_Down_Winning (E, rows, columns);
                Diagonal_N_Up_Winning (E, rows, columns);
                Diagonal_P_Down_Winning (E, rows, columns);
                Diagonal_P_Up_Winning (E, rows, columns);
            }
        }
    }
}

void Algorithm2::Down_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _rows = rows+1; _rows < E.Get_Board_Size(); _rows++) //downwards (checking if there are available coins in a column)
    {
        if (E.Get_Marker(_rows, columns) == marker || E.Get_Marker(_rows, columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(_rows, columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
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
        auto obtainedMove = WinningMove2 {rows, columns};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Up_Winning (Current_Playing_Board E, int rows, int columns)
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
        auto obtainedMove = WinningMove2 {rows, columns};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Left_Winning (Current_Playing_Board E, int rows, int columns)
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
        auto obtainedMove = WinningMove2 {rows, columns};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Right_Winning (Current_Playing_Board E, int rows, int columns)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int _columns = columns+1; _columns < E.Get_Board_Size(); _columns++) //right (checking if there are available coins in a column)
    {
        if (E.Get_Marker(rows, _columns) == marker || E.Get_Marker(rows, _columns) == '_' )
        {
            if (counterDown >= 1 && E.Get_Marker(rows, _columns) == marker)
            {
                encloseFound = true;                     // mark true if the encloser for the coin to be placed was found.
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
        auto obtainedMove = WinningMove2 {rows, columns};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}


void Algorithm2::Diagonal_N_Down_Winning (Current_Playing_Board object, int x, int y)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int rows = x+1, columns = y+1; rows < object.Get_Board_Size() && columns < object.Get_Board_Size(); rows++, columns++)
    {
        if (object.Get_Marker(rows, columns) == marker || object.Get_Marker(rows, columns) == '_' )
        {
            if (counterDown >= 1 && object.Get_Marker(rows, columns) == marker)
            {
                encloseFound = true;                     
                break;
            }
            else
                break;
        }
        else if (object.Get_Marker(rows, columns) != marker && object.Get_Marker(rows, columns) != '_' )
        counterDown++;
    }
        
    if (counterDown >= 1 && encloseFound == true) 
    { 
        auto obtainedMove = WinningMove2 {x, y};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Diagonal_N_Up_Winning (Current_Playing_Board object, int x, int y)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int rows = x-1, columns = y-1; rows >= 0 && columns >= 0; rows--, columns--)
    {
        if (object.Get_Marker(rows, columns) == marker || object.Get_Marker(rows, columns) == '_' )
        {
            if (counterDown >= 1 && object.Get_Marker(rows, columns) == marker)
            {
                encloseFound = true;                     
                break;
            }
            else
                break;
        }
        else if (object.Get_Marker(rows, columns) != marker && object.Get_Marker(rows, columns) != '_' )
        counterDown++;
    }
        
    if (counterDown >= 1 && encloseFound == true) 
    { 
        auto obtainedMove = WinningMove2 {x, y};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Diagonal_P_Down_Winning (Current_Playing_Board object, int x, int y)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int rows = x+1, columns = y-1; rows < object.Get_Board_Size() && columns >= 0; rows++, columns--)
    {
        if (object.Get_Marker(rows, columns) == marker || object.Get_Marker(rows, columns) == '_' )
        {
            if (counterDown >= 1 && object.Get_Marker(rows, columns) == marker)
            {
                encloseFound = true;                     
                break;
            }
            else
                break;
        }
        else if (object.Get_Marker(rows, columns) != marker && object.Get_Marker(rows, columns) != '_' )
        counterDown++;
    }
        
    if (counterDown >= 1 && encloseFound == true) 
    { 
        auto obtainedMove = WinningMove2 {x, y};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Diagonal_P_Up_Winning (Current_Playing_Board object, int x, int y)
{
    int counterDown = 0; 
    bool encloseFound = false;
                
    for (int rows = x-1, columns = y+1; rows >= 0 && columns < object.Get_Board_Size(); rows--, columns++)
    {
        if (object.Get_Marker(rows, columns) == marker || object.Get_Marker(rows, columns) == '_' )
        {
            if (counterDown >= 1 && object.Get_Marker(rows, columns) == marker)
            {
                encloseFound = true;                     
                break;
            }
            else
                break;
        }
        else if (object.Get_Marker(rows, columns) != marker && object.Get_Marker(rows, columns) != '_' )
        counterDown++;
    }
        
    if (counterDown >= 1 && encloseFound == true) 
    { 
        auto obtainedMove = WinningMove2 {x, y};
        List_Of_Winning_Moves.push_back(obtainedMove); 
    }
}

void Algorithm2::Format_List_Of_Winning_Moves()
{
    for (int counter = List_Of_Winning_Moves.size() - 1; counter >= 0; counter--)
    {
             if( List_Of_Winning_Moves.size()  != 0)
                List_Of_Winning_Moves.erase(List_Of_Winning_Moves.begin() + counter);
    }
}

WinningMove2 Algorithm2::Optimal_Move(Current_Playing_Board E)
{
    determineWinningMoves(E);
    
    WinningMove2 best_move = List_Of_Winning_Moves[0];

    Format_List_Of_Winning_Moves();
    
    return best_move;
}




