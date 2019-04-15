#ifndef PLAYER_H
#define PLAYER_H
#include "Window_Size.h"
#include "Movable_Objects.h"

class Player : public Movable_Objects
{
public:
    Player();
    virtual void moveLeft() override;
	virtual void moveRight() override;
	virtual void moveUp() override;
	virtual void moveDown() override;
	virtual bool Is_Valid_Left() const override;
	virtual bool Is_Valid_Right() const override;
    virtual bool Is_Valid_Up() override;
    virtual bool Is_Valid_Down() const override;
    Coordinates Get_Coordinates() const {return coordinates;}
    void Set_Start_Position();
    float Get_Player_Speed() const {return player_speed;}
    float Get_Top () const {return coordinates.y;}
    float Get_Bottom() const {return coordinates.y + _Size.Get_Player_Height();}
    float Get_Left() const {return coordinates.x;}
    float Get_Right() const {return coordinates.x + _Size.Get_Player_Width();}
    void Set_Position(float, float);
    int getLife(){return _PlayerLife;}
    void Damage();
private:
    Coordinates coordinates;
    Window_Size _Size;
    const float player_speed = 10;
    int _PlayerLife = 1;

};

#endif // PLAYER_H
