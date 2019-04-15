#include <iostream>
#include "Game_Board_Management.h"
#include "Algorithm1.h"

using namespace std;

int main()
{
    //Game_Board_Management game;
	auto algorithm1 = Algorithm1(8);
	
	algorithm1.display();
    
    cout << game.Get_Board_Size() << endl;
    return 0;
}