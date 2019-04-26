#include "Turn_Flanked_Pieces.h"
#include <cmath>

Turn_Flanked_Pieces::Turn_Flanked_Pieces()
{
}

Turn_Flanked_Pieces::~Turn_Flanked_Pieces()
{
}

void Turn_Flanked_Pieces::Turn_Pieces (Current_Playing_Board& object, int rows, int columns, char marker)
{
    Turn_Pieces_Horizontal_Right (object, rows, columns, marker);
    Turn_Pieces_Horizontal_Left (object, rows, columns, marker);
    Turn_Pieces_Vertical_Down (object, rows, columns, marker);
    Turn_Pieces_Vertical_Up (object, rows, columns, marker);
    Turn_Pieces_Diagonal_N_Down (object, rows, columns, marker);
    Turn_Pieces_Diagonal_N_Up (object, rows, columns, marker);
    Turn_Pieces_Diagonal_P_Down (object, rows, columns, marker);
    Turn_Pieces_Diagonal_P_Up (object, rows, columns, marker);
}

void Turn_Flanked_Pieces::Turn_Pieces_Horizontal_Right (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int columns = y+1; columns < object.Get_Board_Size(); columns++)
        {
            if (object.Get_Marker(x, columns) == marker || object.Get_Marker(x, columns) == '_' )
            {
                if (counterDown >= 1 && object.Get_Marker(x, columns) == marker)
                {
                    encloseFound = true;                     
                    break;
                }
                else
                    break;
            }
            else if (object.Get_Marker(x, columns) != marker && object.Get_Marker(x, columns) != '_' )
            counterDown++;
        }
        
        if (counterDown >= 1 && encloseFound == true) 
        {   
            for (int columns = y+1; columns < y+counterDown+1 && columns; columns++)
            {
                object.Place_Move(x, columns, marker);
                turnedPieces.push_back(turnedPiece{x, columns});
                Turn_Pieces (object, x, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Horizontal_Left (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int columns = y-1; columns >= 0; columns--)
        {
            if (object.Get_Marker(x, columns) == marker || object.Get_Marker(x, columns) == '_' )
            {
                if (counterDown >= 1 && object.Get_Marker(x, columns) == marker)
                {
                    encloseFound = true;                     
                    break;
                }
                else
                    break;
            }
            else if (object.Get_Marker(x, columns) != marker && object.Get_Marker(x, columns) != '_' )
            counterDown++;
        }
        
        if (counterDown >= 1 && encloseFound == true) 
        { 
            for (int columns = y-1; columns >= y-counterDown-1; columns--)
            {
                object.Place_Move(x, columns, marker);
                turnedPieces.push_back(turnedPiece{x, columns});
                Turn_Pieces (object, x, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Vertical_Down (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int rows = x+1; rows < object.Get_Board_Size(); rows++)
        {
            if (object.Get_Marker(rows, y) == marker || object.Get_Marker(rows, y) == '_' )
            {
                if (counterDown >= 1 && object.Get_Marker(rows, y) == marker)
                {
                    encloseFound = true;                     
                    break;
                }
                else
                    break;
            }
            else if (object.Get_Marker(rows, y) != marker && object.Get_Marker(rows, y) != '_' )
            counterDown++;
        }
        
        if (counterDown >= 1 && encloseFound == true) 
        { 
            for (int rows = x+1; rows < x+counterDown+1; rows++)
            {
                object.Place_Move(rows, y, marker);
                turnedPieces.push_back(turnedPiece{rows, y});
                Turn_Pieces (object, rows, y, marker);
            }
                
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Vertical_Up (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int rows = x-1; rows >= 0; rows--)
        {
            if (object.Get_Marker(rows, y) == marker || object.Get_Marker(rows, y) == '_' )
            {
                if (counterDown >= 1 && object.Get_Marker(rows, y) == marker)
                {
                    encloseFound = true;                     
                    break;
                }
                else
                    break;
            }
            else if (object.Get_Marker(rows, y) != marker && object.Get_Marker(rows, y) != '_' )
            counterDown++;
        }
        
        if (counterDown >= 1 && encloseFound == true) 
        { 
            for (int rows = x-1; rows > x-counterDown-1; rows--)
            {
                object.Place_Move(rows, y, marker);
                turnedPieces.push_back(turnedPiece{rows, y});
                Turn_Pieces (object, rows, y, marker);
            }
                
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Diagonal_N_Down (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
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
            for (int rows = x+1, columns = y+1; rows < x+counterDown+1 && columns < y+counterDown+1; rows++, columns++)
            {
                object.Place_Move(rows, columns, marker);
                turnedPieces.push_back(turnedPiece{rows, columns});
                Turn_Pieces (object, rows, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Diagonal_N_Up (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int rows = x-1, columns = y-1; rows >=0 && columns >=0; rows--, columns--)
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
            for (int rows = x-1, columns = y-1; rows > x-counterDown-1 && columns > y-counterDown-1; rows--, columns--)
            {
                object.Place_Move(rows, columns, marker);
                turnedPieces.push_back(turnedPiece{rows, columns});
                Turn_Pieces (object, rows, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Diagonal_P_Down (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
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
            for (int rows = x+1, columns = y-1; rows < x+counterDown+1 && columns >= 0; rows++, columns--)
            {
                object.Place_Move(rows, columns, marker);
                turnedPieces.push_back(turnedPiece{rows, columns});
                Turn_Pieces (object, rows, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Turn_Pieces_Diagonal_P_Up (Current_Playing_Board& object, int x, int y, char marker)
{
    if (object.Get_Marker(x,y) == marker) 
    {
        int counterDown = 0; 
        bool encloseFound = false;
        
        for (int rows = x-1, columns = y+1; rows >=0 && columns < object.Get_Board_Size(); rows--, columns++)
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
            for (int rows = x-1, columns = y+1; rows >= 0 && columns < y+counterDown+1 ; rows--, columns++)
            {  
                object.Place_Move(rows, columns, marker);
                turnedPieces.push_back(turnedPiece{rows, columns});
                Turn_Pieces (object, rows, columns, marker);
            }
        }
    }
}

void Turn_Flanked_Pieces::Format_List_Of_Turn_Coins()
{
    for (int counter = turnedPieces.size() - 1; counter >= 0; counter--)
    {
        if( turnedPieces.size()  != 0)
            turnedPieces.erase(turnedPieces.begin() + counter);
    }
}

vector <turnedPiece> Turn_Flanked_Pieces::Get_Turn_Pieces_List() 
{
   for (int mode = 0; mode < turnedPieces.size(); mode++) 
   {
        for (int counter = 0; counter <turnedPieces.size(); counter++)
        {
            for (int control = counter+1; control < turnedPieces.size(); control++)
            {
                if (turnedPieces.at(counter).x == turnedPieces.at(control).x && 
                    turnedPieces.at(counter).y == turnedPieces.at(control).y)
                {
                        turnedPieces.erase(turnedPieces.begin() + control);
                }
            }
        }
    }
    
    vector <turnedPiece> mimic = turnedPieces;
    Format_List_Of_Turn_Coins();
    
    return mimic;
}
