#include "Algorithm2.h"
#include <stdlib.h> 
#include <time.h>

Algorithm2::Algorithm2()
{
}

Algorithm2::~Algorithm2()
{
}

Move Algorithm2::Optimal_Move(Current_Playing_Board object)
{
    Move optimalMove;
    int x, y;
    
    while (true)
    {
        cout << "Postion x coordinate: "; cin >> x;
        cout << "Position y coordinate: "; cin >> y;
        
        if (object.Is_Cell_Empty(x, y))
        {
            optimalMove = Move{x, y};
            cout << "Should break" << endl;
            break;
        }
    }
    
    return optimalMove;
}

