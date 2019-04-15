#include "Player.h"

Player::Player(sf::Vector2f size)
{
    Set_Start_Position ();
    player.setSize(size); 
    player.setPosition(Get_Start_Position().x, Get_Start_Position().y);
    Install_Texture(player,playerTexture);
}

void Player::Set_Start_Position ()
{
   starting_point.x =  _Size.Get_Window_Dimensions()._width/2;
   starting_point.y =  _Size.Get_Window_Dimensions()._height - _Size.Get_Player_Height();
}

void Player::Set_Position (float X, float Y)
{
   starting_point.x =  X;
   starting_point.y =  Y;
}

Player::~Player()
{
}

bool Player::IsLeftValid()
{
    if (starting_point.x <= 0.0f)
        return false;
    return true;
}

bool Player::IsRightValid()
{
    if (starting_point.x > _Size.Get_Window_Dimensions()._width - _Size.Get_Player_Width())
        return false;
    return true;
}

void Player::moveLeft ()
{
    starting_point.x -= Get_Player_Speed ();
    player.move(sf::Vector2f(-Get_Player_Speed(), NULL));
}

void Player::moveRight()
{
    starting_point.x += Get_Player_Speed ();
    player.move(sf::Vector2f(Get_Player_Speed(), NULL));
}

void Player::Install_Texture(sf::RectangleShape& object, sf::Texture& texture)
{
    texture.loadFromFile("playerShip.png");
    object.setTexture(&texture);
}