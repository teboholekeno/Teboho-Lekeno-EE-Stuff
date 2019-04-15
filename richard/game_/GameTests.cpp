#include "Window_Size.h"
#include "Player.h"


#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

//TESTING THE MEMBER FUNCTIONS OF THE "Window_Size.h" CLASS

TEST_CASE("Default Window Dimension are Created when They are Not Set")
{
    Window_Size default_Dimensions;
    
    Dimensions Test_Dimensions;
    Test_Dimensions._width = 880; 
    Test_Dimensions._height = 550;
    
    CHECK (default_Dimensions.Get_Window_Dimensions()._height == Test_Dimensions._height);
    CHECK (default_Dimensions.Get_Window_Dimensions()._width == Test_Dimensions._width);
}

TEST_CASE("Default Window Dimensions Changes When Updated Dimensions Are Within the Bounds")
{
    Dimensions Test_Dimensions;
    
    Test_Dimensions._width = 1520; 
    Test_Dimensions._height = 1010;
    
    Window_Size default_Dimensions;
    default_Dimensions.Set_Window_Dimensions(1520,1010);
    
    CHECK (default_Dimensions.Get_Window_Dimensions()._height == Test_Dimensions._height);
    CHECK (default_Dimensions.Get_Window_Dimensions()._width == Test_Dimensions._width);
}


TEST_CASE("An Exception Is Thrown When Attempting To Give Size Out of Bound")
{
    auto window_length = 5520; 
    auto window_height = 1010;
    
    Window_Size default_Dimensions;
    
    CHECK_THROWS_AS(default_Dimensions.Set_Window_Dimensions(window_length, window_height), Window_Out_Of_Max_Bound);
}

//TESTING MEMBER FUNCTIONS OF THE "Player.h" CLASS

TEST_CASE("The start Positon of The player is at the Centre bottom of the Window")
{
    Window_Size default_Dimensions;
    Player player;
    
    player.Set_Start_Position();
    CHECK (default_Dimensions.Get_Window_Dimensions()._height - default_Dimensions.Get_Player_Height()== player.Get_Start_Position().y);
    CHECK (default_Dimensions.Get_Window_Dimensions()._width/2 == player.Get_Start_Position().x);
}

TEST_CASE("Checking if the player moves left")
{
    Player player;
    player.Set_Start_Position();
    
    auto test_x = player.Get_Start_Position().x - player.Get_Player_Speed();
    auto test_y = player.Get_Start_Position().y;
    
    player.moveLeft();
    
    CHECK (test_x == player.GetX());
    CHECK (test_y == player.GetY());
}

TEST_CASE("Checking if the player moves Right")
{
    Player player;
    player.Set_Start_Position();
    
    auto test_x = player.Get_Start_Position().x + player.Get_Player_Speed();
    auto test_y = player.Get_Start_Position().y;
    
    player.moveRight();
    
    CHECK (test_x == player.GetX());
    CHECK (test_y == player.GetY());
}

TEST_CASE("The player does not cross left boundary")
{
    Window_Size default_Dimensions;
    Player player;
    
    auto test_x = 0;
    auto test_y = default_Dimensions.Get_Window_Dimensions()._height - default_Dimensions.Get_Player_Height();
    
    player.Set_Position(test_x, test_y);
    player.moveLeft();
    
    CHECK (test_x == 0);
    CHECK (test_y == default_Dimensions.Get_Window_Dimensions()._height - default_Dimensions.Get_Player_Height());
}

TEST_CASE("The player does not cross right boundary")
{
    Window_Size default_Dimensions;
    Player player;
    
    auto test_x = default_Dimensions.Get_Window_Dimensions()._width;
    auto test_y = default_Dimensions.Get_Window_Dimensions()._height - default_Dimensions.Get_Player_Height();
    
    player.Set_Position(test_x, test_y);
    player.moveRight();
    
    CHECK (test_x == default_Dimensions.Get_Window_Dimensions()._width);
    CHECK (test_y == default_Dimensions.Get_Window_Dimensions()._height - default_Dimensions.Get_Player_Height());
}






