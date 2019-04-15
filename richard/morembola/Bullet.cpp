#include "Bullet.h"

Bullet::Bullet(const Player& player)
{
    coordinates.x = player.Get_Coordinates().x + _Size.Get_Player_Width()*0.3;
    coordinates.y = player.Get_Coordinates().y;
}

bool Bullet::Bullet_Inside_Window() 
{
    if (coordinates.y < Get_Bullet_Speed())
     return false;
    return true;
}

void Bullet::Destroy_Bullet(vector<Bullet>& bulletVector, int position)
{ 
     if( bulletVector.size() != 0)
   { bulletVector.erase(bulletVector.begin() + position);}
}

Bullet::~Bullet()
{
}

void Bullet::Create_Bullet(vector <Bullet>& bulletVector, const Bullet newBullet, bool& shoot)
{
    if (shoot)
    {
        bulletVector.push_back(newBullet);
        shoot = false;
    }
}

void Bullet::move(vector <Bullet>& bulletVector)
{
    for (auto counter = 0; counter < bulletVector.size(); counter++)
    {
        bulletVector[counter].fire();
            
        //DESTROYING A BULLET THAT IS OUT OF WINDOW BOUNDS TO SAVE MEMORY
        if (!bulletVector[counter].Bullet_Inside_Window() || bulletVector[counter].Get_Collision_Status())
            bulletVector[counter].Destroy_Bullet(bulletVector, counter);
        }
}

