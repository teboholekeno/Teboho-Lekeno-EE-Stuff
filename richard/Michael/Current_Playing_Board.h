#ifndef CURRENT_PLAYING_BOARD_H
#define CURRENT_PLAYING_BOARD_H

class Current_Playing_Board
{
public:
    Current_Playing_Board(){}
    Current_Playing_Board(int);
    bool Is_Cell_Empty(int, int) const;
    void Place_Move (int, int, char);
    ~Current_Playing_Board();
private:
    char** game_grid;
    int size;
};

void Create_Dynamic_Grid (char**, int);
void Format_Dynamic_Memory (char**, int);

#endif // CURRENT_PLAYING_BOARD_H
