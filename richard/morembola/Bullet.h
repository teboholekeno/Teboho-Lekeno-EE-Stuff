#ifndef BULLET_H
#define BULLET_H
#include "Player.h"
#include <vector>

class Bullet
{
public:
    Bullet(){}
    Bullet(const Player&);
    float Get_Bullet_Speed(){return bullet_speed;}
    Coordinates Get_Coordinates() const {return coordinates;}
    void move(vector <Bullet>&);
    void fire() {coordinates.y -= Get_Bullet_Speed();}
    bool Bullet_Inside_Window();
    void Destroy_Bullet(vector<Bullet>&, int);
    float Get_Top () const {return coordinates.y;}
    float Get_Bottom() const {return coordinates.y + _Size.Get_Bullet_Height();}
    float Get_Left() const {return coordinates.x;}
    float Get_Right() const {return coordinates.x + _Size.Get_Bullet_Width();}
    void setCollision(){collided = true;}
    bool Get_Collision_Status() const {return collided;}
    void Create_Bullet(vector <Bullet>&, const Bullet, bool&);
    ~Bullet();
private:
    Coordinates coordinates;
    Window_Size _Size;
    float bullet_speed = 0.2;
    bool collided = false;
};

#endif // BULLET_H
