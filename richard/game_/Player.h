#ifndef PLAYER_H
#define PLAYER_H
#include "Window_Size.h"
#include "Movement.h"

class Player : public Movement
{
public:
    Player(){}
    Player(sf::Vector2f size);
    void Set_Start_Position ();
    void Set_Position (float, float);
    Coordinates Get_Start_Position() const{return starting_point;};
    void moveLeft ();
    void moveRight ();
    bool IsLeftValid();
    bool IsRightValid();
    void draw(sf::RenderWindow& window){window.draw(player);}
    float GetX(){return starting_point.x;}
    float GetY(){return starting_point.y;}
    float Get_Player_Speed (){return player_speed;}
    void Install_Texture(sf::RectangleShape&, sf::Texture&);
    
    ~Player();

private:
    Coordinates starting_point;
    Window_Size _Size;
    sf::RectangleShape player;
    float player_speed = 3.0f;
    sf::Texture playerTexture;
};

#endif // PLAYER_H
