#ifndef ALGORITHM2_H
#define ALGORITHM2_H
#include "Current_Playing_Board.h"

struct Move {int x, y;};

class Algorithm2
{
public:
    Algorithm2();
    ~Algorithm2();
    char Get_Marker() const {return marker;}
    Move Optimal_Move(Current_Playing_Board);
private:
    char marker = 'O';
};

#endif // ALGORITHM2_H
