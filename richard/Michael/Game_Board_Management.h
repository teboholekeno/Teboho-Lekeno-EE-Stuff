#ifndef GAME_BOARD_MANAGEMENT_H
#define GAME_BOARD_MANAGEMENT_H
#include <vector>

class Game_Board_Management
{
public:
    Game_Board_Management();
    ~Game_Board_Management();
    int Get_Number_Of_Boards() const {return Boards_Storage.size();}
    int Get_Board_Size(int) const;
private:
    void Collect_Boards_Sizes();
    
    std::vector<int> Boards_Storage;
};

#endif // GAME_BOARD_MANAGEMENT_H
