#ifndef MUSHROOM_H
#define MUSHROOM_H
#include "Centipede.h"
#include "Player.h"
#include <vector>
#include <stdlib.h> 
#include <time.h>

class Mushroom 
{
public:
    Mushroom();
    void Create_Mushrooms (vector<Mushroom>&, const vector<Centipede>);
    void Create_Mushroom (vector<Mushroom>&, float, float);
    void Set_Start_Position(int,int);
    Coordinates Get_Coordinates() const {return coordinates;}
    float Get_Top () const {return coordinates.y;}
    float Get_Bottom() const {return coordinates.y + _Size.Get_Mushroom_Height();}
    float Get_Left() const {return coordinates.x;}
    float Get_Right() const {return coordinates.x + _Size.Get_Mushroom_Width();}
    void Damage();
    int getLife(){return _MushroomLife;}
    void Destroy_Mushroom(vector<Mushroom>& , int);
    ~Mushroom();
private:
    Coordinates coordinates;
    Window_Size _Size;
    int _MushroomLife = 20;
};

#endif // MUSHROOM_H
