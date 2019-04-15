#ifndef CENTEPEDE_H
#define CENTEPEDE_H

enum class Direction {LEFT, RIGHT, UP, DOWN};

struct Coordinates
{
	int x, y;
};

class Centepede
{
public:
	Centepede() {new_direction == Direction::LEFT;}
	void movement();
	void moveLeft();
	void moveRight();
	void moveUp();
	void moveDown();
	bool Is_Valid_Left() const;
	bool Is_Valid_Right() const;
	Coordinates Get_Coordinates() const {return coordinates;}
	void Set_Start_Position(int,int);
	void default_direction ();
private:
	Coordinates coordinates;
	Direction new_direction, old_direction;
};

#endif // CENTEPEDE_H
