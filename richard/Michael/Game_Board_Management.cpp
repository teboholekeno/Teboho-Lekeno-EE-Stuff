#include "Game_Board_Management.h"
#include <fstream>

Game_Board_Management::Game_Board_Management()
{
    Collect_Boards_Sizes();
}

void Game_Board_Management::Collect_Boards_Sizes()
{
    std::ifstream infile ("input.txt");
    int Board_Size;
    
    if (infile.good())
    {
        while (!infile.eof())
        {
            infile >> Board_Size;
            
            if (Board_Size >= 4 && Board_Size <= 16 && Board_Size%2 == 0)
                Boards_Storage.push_back(Board_Size);
        }
    }
}

Game_Board_Management::~Game_Board_Management()
{
}

int Game_Board_Management::Get_Board_Size(int index) const
{
    if (index <= Boards_Storage.size() -1)
        return Boards_Storage[index];
}

