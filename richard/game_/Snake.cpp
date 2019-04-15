#include "Centepede.h"

void Centepede::moveLeft()
{
	coordinates.x -= 1;
}

void Centepede::moveRight()
{
	coordinates.x += 1;
}

void Centepede::moveDown()
{
	coordinates.y += 1;
}

void Centepede::moveUp()
{
	coordinates.y -= 1;
}

void Centepede::movement()
{
	if (new_direction == Direction::LEFT)
	{
		if (Is_Valid_Left())
			moveLeft();
		else
		{
		   old_direction = new_direction;
           new_direction = Direction::DOWN;
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
		   old_direction = new_direction;
           new_direction = Direction::DOWN;
           movement();
		}
	}
	else if (new_direction == Direction::DOWN)
	{
		moveDown();
        
        if (old_direction == Direction::LEFT)
            new_direction = Direction::RIGHT;
        else if (old_direction == Direction::RIGHT)
            new_direction = Direction::LEFT;
	}
}

bool Centepede::Is_Valid_Left() const
{
	if (coordinates.x <= 0)
		return false;
	return true;
}

bool Centepede::Is_Valid_Right() const
{
	if (coordinates.x < 19)
		return true;
	return false;
}

void Centepede::Set_Start_Position(int X, int Y)
{
	coordinates.x = X;
	coordinates.y = Y;
}

void Centepede::default_direction ()
{
	new_direction = Direction::LEFT;
}

