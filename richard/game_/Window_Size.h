#ifndef WINDOW_SIZE_H
#define WINDOW_SIZE_H
#include <cmath>
#include <iostream>
#include <memory>

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
    float Get_Snake_Width() const {return _snake_width;}
    float Get_Snake_Height() const {return _snake_height;}
    ~Window_Size();
private:
    Dimensions _window_dimensions;
    const float default_width = 880, default_height = 550;
    const float _max_width = 1920, _max_height = 1080;
    const float _player_width = 50, _player_height = 50;
    const float _snake_width = 50, _snake_height = 50;
};

#endif // WINDOW_SIZE_H
