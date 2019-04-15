#ifndef WINDOW_SIZE_H
#define WINDOW_SIZE_H
#include <cmath>
#include <iostream>

using namespace std;

class Window_Out_Of_Max_Bound {};

struct Dimensions
{
    float _width, _height;
};

struct Coordinates
{
	float x,  y;
};

class Window_Size
{
public:
    Window_Size();
    bool Is_Valid_Dimensions(const Dimensions&);
    void Set_Window_Dimensions (float, float);
    bool Is_Correct_Coordinates(const Coordinates&);
    Dimensions Get_Window_Dimensions () const {return _window_dimensions;}
    float Get_Player_Width() const {return _player_width;}
    float Get_Player_Height() const {return _player_height;}
    float Get_Centipede_Width() const {return _Centipede_width;}
    float Get_Centipede_Height() const {return _Centipede_height;}
    int Get_Number_Of_Bodies(){return _number_of_bodies;}
    float Get_Bullet_Width()const {return _bullet_width;}
    float Get_Bullet_Height() const {return _bullet_height;}
    float Get_Mushroom_Height() const {return _mushroom_height;}
    float Get_Mushroom_Width() const {return _mushroom_width;}
    int Get_Number_Of_Mushrooms() const {return _number_of_mushrooms;}
    ~Window_Size();
private:
    Dimensions _window_dimensions;
    float default_width = 880, default_height = 550;
    float _max_width = 1920, _max_height = 1080;
    float _player_width = 30, _player_height = 30;
    float _Centipede_width = 20, _Centipede_height = 20;
    float _bullet_width = 10, _bullet_height = 10;
    int _number_of_bodies = 20;
    float _mushroom_width = 20, _mushroom_height = 20;
    int _number_of_mushrooms = 50;
};

#endif // WINDOW_SIZE_H
