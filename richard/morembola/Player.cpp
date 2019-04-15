#include "Player.h"

Player::Player()
{
     Set_Start_Position();
}

void Player::moveLeft()
{
	if (Is_Valid_Left())
        coordinates.x -= Get_Player_Speed();
}

void Player::moveRight()
{
	if (Is_Valid_Right())
        coordinates.x += Get_Player_Speed();
}

void Player::moveDown()
{
	if (Is_Valid_Down())
        coordinates.y += Get_Player_Speed();
}

void Player::moveUp()
{    
    if (Is_Valid_Up())
        coordinates.y -= Get_Player_Speed();
}

bool Player::Is_Valid_Left() const
{
	if (coordinates.x <= 0)
		return false;
	else return true;
}

bool Player::Is_Valid_Right() const
{
    if (coordinates.x > _Size.Get_Window_Dimensions()._width - _Size.Get_Player_Width())
        return false;
    else return true;
}

bool Player::Is_Valid_Up() 
{
    if (coordinates.y <= _Size.Get_Window_Dimensions()._height* (0.75) )
        return false;
   else return true;
}

bool Player::Is_Valid_Down() const
{
    if (coordinates.y > _Size.Get_Window_Dimensions()._height - _Size.Get_Player_Height()-Get_Player_Speed())
        return false;
    else return true;
}

void Player::Set_Start_Position()
{
    coordinates.x =  _Size.Get_Window_Dimensions()._width/2;
    coordinates.y =  _Size.Get_Window_Dimensions()._height - _Size.Get_Player_Height();
}

void Player::Set_Position(float X, float Y)
{
    coordinates.x = X;
    coordinates.y = Y;
}

void Player::Damage()
{
    _PlayerLife -= 1;
}

