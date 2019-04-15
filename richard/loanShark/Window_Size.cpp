#include "Window_Size.h"

Window_Size::Window_Size()
{
    _window_dimensions._height = default_height;
    _window_dimensions._width = default_width;
}
Window_Size::~Window_Size()
{
}

bool Window_Size::Is_Valid_Dimensions(const Dimensions& dimensions)
{
    if(dimensions._height <= abs(_max_height) && dimensions._width <= abs(_max_width))
        return true;
    else
        return false;
}

void Window_Size::Set_Window_Dimensions(float X, float Y)
{
    Dimensions window_dimensions;
    window_dimensions._width = X;
    window_dimensions._height = Y;

    if(Is_Valid_Dimensions(window_dimensions))
        _window_dimensions = window_dimensions;
    else
        throw Window_Out_Of_Max_Bound();
}

bool Window_Size::Is_Correct_Coordinates(const Coordinates& coordinates)
{
    if((coordinates.x >= 0 && coordinates.x <= _window_dimensions._width) &&
        (coordinates.y >= 0 && coordinates.y <= _window_dimensions._height))
        return true;
    false;
}
