#include "Mushroom.h"

Mushroom::Mushroom()
{
}

Mushroom::~Mushroom()
{
}
void Mushroom::Damage()
{
    _MushroomLife -= 5;
}
void Mushroom::Destroy_Mushroom(vector<Mushroom>& CentipedeVector, int position)
{
    CentipedeVector.erase(CentipedeVector.begin() + position);
}
void Mushroom::Create_Mushroom (vector<Mushroom>& mushroomVector, float X, float Y)
{
    Mushroom newMushroom;
    newMushroom.Set_Start_Position(static_cast<int>(X),static_cast<int>(Y));
    mushroomVector.push_back (newMushroom);
}

void Mushroom::Create_Mushrooms (vector<Mushroom>& mushroomVector, const vector<Centipede> CentipedeVector)
{
    Mushroom newMushroom;
    int generated_x , generated_y;
    auto counter = 0;
    
    srand (time(NULL));
    
    while (true)
    {
        generated_x = rand()%(static_cast<int>(_Size.Get_Window_Dimensions()._width - _Size.Get_Mushroom_Width()));
        generated_y = rand()%(static_cast<int>(_Size.Get_Window_Dimensions()._height - _Size.Get_Mushroom_Height()));
        
        
        if (generated_x%static_cast<int>(_Size.Get_Mushroom_Width()) == 0 && generated_y%static_cast<int>(_Size.Get_Mushroom_Height()) == 0
             && generated_y <=_Size.Get_Window_Dimensions()._height - _Size.Get_Player_Height() - _Size.Get_Mushroom_Height())
        {
            newMushroom.Set_Start_Position(generated_x,generated_y);
            mushroomVector.push_back (newMushroom);
            counter++;
        }
        
        if (counter == _Size.Get_Number_Of_Mushrooms() - 1)
            break;
    }
}

void Mushroom::Set_Start_Position(int X,int Y)
{
    coordinates.x = static_cast<float> (X);
    coordinates.y = static_cast<float> (Y);
}
