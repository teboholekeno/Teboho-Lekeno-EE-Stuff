#include "Collision.h"

Collision::Collision()
{
}

Collision::~Collision()
{
}
bool Collision::Is_Collision (const Player player, const vector<Mushroom> mushroom, Direction _direction) 
{
    for( auto i = 0 ; i < mushroom.size(); i++)
    {
        if (_direction == Direction::LEFT)
        {
            if (player.Get_Left() <= mushroom[i].Get_Right() && ((player.Get_Top() < mushroom[i].Get_Bottom() 
               && mushroom[i].Get_Top() < player.Get_Top())))
                return true;
        }
        else if (_direction == Direction::RIGHT)
        {
            
        if (  mushroom[i].Get_Top() < player.Get_Bottom() &&   mushroom[i].Get_Top() > player.Get_Top() &&
               mushroom[i].Get_Left() > player.Get_Left() &&   mushroom[i].Get_Left() < player.Get_Right())
            return true;
            
        }
        else if (_direction == Direction::UP)
        {   
        
             if (  mushroom[i].Get_Bottom() < player.Get_Top() &&   mushroom[i].Get_Top() >= player.Get_Top() &&
               mushroom[i].Get_Right() >= player.Get_Left() &&   mushroom[i].Get_Right() <= player.Get_Right())
            return true;

        }
        else if (_direction == Direction::DOWN)
        {
            
             if (  mushroom[i].Get_Top()<= player.Get_Bottom() &&   mushroom[i].Get_Top() >= player.Get_Top() &&
               mushroom[i].Get_Right() >= player.Get_Left() &&   mushroom[i].Get_Right() <= player.Get_Right())
            return true;
        }
        
        
   
    }
        return false;
    
}
bool Collision::Is_Collision (const Player player, const Centipede Centipede) const
{
    if (player.Get_Top()<= Centipede.Get_Bottom() && player.Get_Top() >= Centipede.Get_Top() &&
        player.Get_Right() >= Centipede.Get_Left() && player.Get_Right() <= Centipede.Get_Right())
            return true;
    else if (Centipede.Get_Top()<= player.Get_Bottom() && Centipede.Get_Top() >= player.Get_Top() &&
             Centipede.Get_Right() >= player.Get_Left() && Centipede.Get_Right() <= player.Get_Right())
            return true;
    else if (Centipede.Get_Top()<= player.Get_Bottom() && Centipede.Get_Top() >= player.Get_Top() &&
             Centipede.Get_Left() >= player.Get_Left() && Centipede.Get_Left() <= player.Get_Right())
            return true;
    else if (Centipede.Get_Bottom()<= player.Get_Bottom() && Centipede.Get_Bottom() >= player.Get_Top() &&
             Centipede.Get_Right() >= player.Get_Left() && Centipede.Get_Right() <= player.Get_Right())
            return true;
    else
        return false;
}

bool Collision::Is_Collision(const Bullet bullet, const Centipede Centipede) const
{
        if (bullet.Get_Top()<= Centipede.Get_Bottom() && bullet.Get_Top() >= Centipede.Get_Top() &&
        bullet.Get_Right() >= Centipede.Get_Left() && bullet.Get_Right() <= Centipede.Get_Right())
            return true;
    else if (Centipede.Get_Top()<= bullet.Get_Bottom() && Centipede.Get_Top() >= bullet.Get_Top() &&
             Centipede.Get_Right() >= bullet.Get_Left() && Centipede.Get_Right() <= bullet.Get_Right())
            return true;
    else if (Centipede.Get_Top()<= bullet.Get_Bottom() && Centipede.Get_Top() >= bullet.Get_Top() &&
             Centipede.Get_Left() >= bullet.Get_Left() && Centipede.Get_Left() <= bullet.Get_Right())
            return true;
    else if (Centipede.Get_Bottom()<= bullet.Get_Bottom() && Centipede.Get_Bottom() >= bullet.Get_Top() &&
             Centipede.Get_Right() >= bullet.Get_Left() && Centipede.Get_Right() <= bullet.Get_Right())
            return true;
    else
        return false;
}

bool Collision::Is_Collision (const Mushroom mushroom, const Centipede Centipede) const
{
    if (Centipede.Get_Direction() == Direction::LEFT)
    {  
        if (Centipede.Get_Left() == mushroom.Get_Right() && Centipede.Get_Top() == mushroom.Get_Top() && Centipede.Get_Bottom() == mushroom.Get_Bottom())
         { 
             return true;
         }
        return false;
    }
    else if (Centipede.Get_Direction() == Direction::RIGHT)
    {
        if (mushroom.Get_Left() == Centipede.Get_Right() && Centipede.Get_Top() == mushroom.Get_Top() && Centipede.Get_Bottom() == mushroom.Get_Bottom())
        {
            return true;
        }
        return false;
    }
    else
        return false;
}

bool Collision::Is_Collision(const Mushroom mushroom, const Bullet bullet) const
{
        if (mushroom.Get_Top()<= bullet.Get_Bottom() && mushroom.Get_Top() >= bullet.Get_Top() &&
        mushroom.Get_Right() >= bullet.Get_Left() && mushroom.Get_Right() <= bullet.Get_Right())
            return true;
    else if (bullet.Get_Top()<= mushroom.Get_Bottom() && bullet.Get_Top() >= mushroom.Get_Top() &&
             bullet.Get_Right() >= mushroom.Get_Left() && bullet.Get_Right() <= mushroom.Get_Right())
            return true;
    else if (bullet.Get_Top()<= mushroom.Get_Bottom() && bullet.Get_Top() >= mushroom.Get_Top() &&
             bullet.Get_Left() >= mushroom.Get_Left() && bullet.Get_Left() <= mushroom.Get_Right())
            return true;
    else if (bullet.Get_Bottom()<= mushroom.Get_Bottom() && bullet.Get_Bottom() >= mushroom.Get_Top() &&
             bullet.Get_Right() >= mushroom.Get_Left() && bullet.Get_Right() <= mushroom.Get_Right())
            return true;
    else
        return false;
}
