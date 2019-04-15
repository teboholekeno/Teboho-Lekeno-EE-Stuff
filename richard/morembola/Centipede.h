#ifndef CENTIPEDE_H
#define CENTIPEDE_H
#include <time.h>
#include <vector>
#include "Window_Size.h"
#include "Movable_Objects.h"

enum class Direction {LEFT, RIGHT, UP, DOWN, DEFAULT};

class Centipede : public Movable_Objects
{
public:
	Centipede() {new_direction == Direction::LEFT;}
	 void movement();
	virtual void moveLeft();
	virtual void moveRight();
	virtual void moveUp();
	virtual void moveDown();
	virtual bool Is_Valid_Left() const override;
	virtual bool Is_Valid_Right()  const override;
    virtual bool Is_Valid_Down()  const override;
    virtual bool Is_Valid_Up() override;
	Coordinates Get_Coordinates() const {return coordinates;}
	void Set_Start_Position(int,int);
	void default_direction ();
    float Get_Centipede_Speed() const {return Centipede_speed;}
    float Get_Top () const {return coordinates.y;}
    float Get_Bottom() const {return coordinates.y + _Size.Get_Centipede_Height();}
    float Get_Left() const {return coordinates.x;}
    float Get_Right() const {return coordinates.x + _Size.Get_Centipede_Width();}
    void Destroy_Centipede(vector<Centipede>&, int);
    Direction Get_Direction () const {return new_direction;}
    void Update_Direction ();
    bool Is_Inside_Player_Terrain();
    void Create_Head() {head = true;}
    bool Is_Head() {return head;}
    void Create_Centipede (vector <Centipede>&);
private:
	Coordinates coordinates;
	Direction new_direction, old_direction, current_path;
    Window_Size _Size;
    bool head = false;
    float Centipede_speed = 1;
    bool Inside_Player_Terrain;
};

#endif // CENTIPEDE_H
