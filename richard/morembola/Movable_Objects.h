#ifndef MOVABLE_OBJECTS_H
#define MOVABLE_OBJECTS_H

class Movable_Objects
{
public:
    Movable_Objects();
    virtual void moveLeft() = 0;
    virtual void moveRight() = 0;
	virtual void moveUp() = 0;
	virtual void moveDown() = 0;
    virtual bool Is_Valid_Left() const = 0;
    virtual bool Is_Valid_Right() const = 0;
    virtual bool Is_Valid_Up() = 0;
    virtual bool Is_Valid_Down() const = 0;
    virtual ~Movable_Objects();
};

#endif // MOVABLE_OBJECTS_H
