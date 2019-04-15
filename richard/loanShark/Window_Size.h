#ifndef WINDOW_SIZE_H
#define WINDOW_SIZE_H
#include <cmath>
#include <iostream>

using namespace std;

class Window_Out_Of_Max_Bound {};

struct Dimensions { float _width, _height; };
struct Coordinates { float x,  y; };

class Window_Size
{
public:
    Window_Size();
    bool Is_Valid_Dimensions(const Dimensions&);
    void Set_Window_Dimensions (float, float);
    bool Is_Correct_Coordinates(const Coordinates&);
    Dimensions Get_Window_Dimensions () const {return _window_dimensions;}
    ~Window_Size();
private:
    Dimensions _window_dimensions;
    float default_width = 880, default_height = 550;
    float _max_width = 1920, _max_height = 1080;
};

#endif // WINDOW_SIZE_H
