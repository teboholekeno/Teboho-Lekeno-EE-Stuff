#ifndef COLLISION_H
#define COLLISION_H
#include "Bullet.h"
#include "Centipede.h"
#include "Mushroom.h"
#include <vector>

using namespace std;
class Collision
{
public:
    Collision();
    bool Is_Collision (const Player, const Centipede) const;   // PLAYER COLLISION WITH THE CENTIPEDE
    bool Is_Collision(const Bullet, const Centipede) const;    // BULLET COLLISION WITH THE CENTIPEDE
    bool Is_Collision (const Mushroom, const Centipede) const;  // MUSHROOM COLLISION WITH THE CENTIPEDE
    bool Is_Collision(const Mushroom, const Bullet) const;
    bool Is_Collision (const Player, const vector<Mushroom>, Direction);//, Direction) ; 
    ~Collision();
private:
    Direction direction;
    Window_Size _Size;
};

#endif // COLLISION_H
