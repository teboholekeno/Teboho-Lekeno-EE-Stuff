#include "Centipede.h"

void Centipede::moveLeft()
{
	coordinates.x -= Get_Centipede_Speed();
}

void Centipede::moveRight()
{
	coordinates.x += Get_Centipede_Speed();
}

void Centipede::moveDown()
{
	coordinates.y += _Size.Get_Centipede_Height();
}

void Centipede::moveUp()
{
	coordinates.y -= _Size.Get_Centipede_Height();
}

void Centipede::movement()
{
	if (new_direction == Direction::LEFT)
	{
		if (Is_Valid_Left())
			moveLeft();
		else
		{
            if (current_path == Direction::DOWN)
            {
                old_direction = new_direction;
                new_direction = Direction::DOWN;
            }
            else if (current_path == Direction::UP)
            {
                old_direction = new_direction;
                new_direction = Direction::UP;
            }
           movement();
		}
	}
	else if (new_direction == Direction::RIGHT)
	{
		if (Is_Valid_Right())
		{
			moveRight();
		}
		else
		{
		   if (current_path == Direction::DOWN)
           {
              old_direction = new_direction;
              new_direction = Direction::DOWN;
           }
           else if (current_path == Direction::UP)
           {
              old_direction = new_direction;
              new_direction = Direction::UP; 
           }
           movement();
		}
	}
	else if (new_direction == Direction::DOWN)
	{
		if (Is_Valid_Down())
        {
            moveDown();
        
            if (old_direction == Direction::LEFT)
                new_direction = Direction::RIGHT;
            else if (old_direction == Direction::RIGHT)
                new_direction = Direction::LEFT;
        }
        else
        {
           new_direction = Direction::UP;
           current_path = Direction::UP;
           movement();
        }
	}
    else if (new_direction == Direction::UP)
    {
        if (Is_Valid_Up())
        {
            moveUp();
            
            if (old_direction == Direction::LEFT)
                new_direction = Direction::RIGHT;
            else if (old_direction == Direction::RIGHT)
                new_direction = Direction::LEFT;
        }
        else
        {
           new_direction = Direction::DOWN;
           current_path = Direction::DOWN;
           movement();
        }   
    }
}

bool Centipede::Is_Valid_Left() const
{
	if (coordinates.x <= 0)
		return false;
	return true;
}

bool Centipede::Is_Valid_Right() const
{
	if (coordinates.x < _Size.Get_Window_Dimensions()._width - _Size.Get_Centipede_Width())
		return true;
	return false;
}

bool Centipede::Is_Valid_Down() const
{
    if (coordinates.y > _Size.Get_Window_Dimensions()._height - _Size.Get_Centipede_Height()-Get_Centipede_Speed())
        return false;
    return true;
}

bool Centipede::Is_Valid_Up() 
{
    if (coordinates.y > Get_Centipede_Speed() && Is_Inside_Player_Terrain())
     return true;
    return false;
}

void Centipede::Set_Start_Position(int X, int Y)
{
	coordinates.x = X;
	coordinates.y = Y;
}

void Centipede::default_direction ()
{
	new_direction = Direction::LEFT;
    current_path = Direction::DOWN;
    Inside_Player_Terrain = false;
}

bool Centipede::Is_Inside_Player_Terrain()
{
    if (coordinates.y < _Size.Get_Window_Dimensions()._height* (0.75) )
        return false;
   else return true;
}

void Centipede::Destroy_Centipede(vector<Centipede>& CentipedeVector, int position)
{
    CentipedeVector.erase(CentipedeVector.begin() + position);
}

void Centipede::Update_Direction ()
{
    old_direction = new_direction; 
    
    if (current_path == Direction::DOWN)
        new_direction = Direction::DOWN;
    else if (current_path == Direction::UP)
        new_direction = Direction::UP;
}

void Centipede::Create_Centipede (vector <Centipede>& CentipedeBodies)
{
    for (int counter1 = 0; counter1 < _Size.Get_Number_Of_Bodies(); counter1++)
	{  
      Centipede newCentipede;
      newCentipede.Set_Start_Position(counter1*_Size.Get_Centipede_Width(),0);
      newCentipede.default_direction ();
      CentipedeBodies.push_back(newCentipede);
      CentipedeBodies[0].Create_Head();
    }
}
