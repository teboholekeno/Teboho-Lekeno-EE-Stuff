#include <iostream>

using namespace std;

class MSM
{
public:
    MSM();
    void createMatrix();
    void collectSize();
    void collectInput();
    void determineMinimumMatrix();
    void miniDeterminer(int, int);
    void print() const;

private:
    int MaxSum = 0, Size = 0;
    int** matrix;
};

int main()
{
    MSM msm;
}

MSM::MSM()
{
    collectSize();
    createMatrix();
    collectInput();

    determineMinimumMatrix();
    print();
}

void MSM::determineMinimumMatrix()
{
    for(int ROWS = 0; ROWS < Size; ROWS++) {
        for(int COLS = 0; COLS < Size; COLS++) {
            miniDeterminer(ROWS, COLS);
        }
    }
}

void MSM::miniDeterminer(int startRow, int startCol)
{
    int control = 1;
    int summer = 0;

    while(true) {
        for(int rows = startRow; rows < control; rows++) {
            for(int cols = startCol; cols < control; cols++) {
                summer += matrix[rows][cols];
            }
        }

        if(summer > MaxSum)
            MaxSum = summer;

        summer = 0;
        control++;
        if(control > Size)
            break;
    }
}

void MSM::collectSize()
{
    while(true) {
        cin >> Size;

        if(Size >= 0)
            break;
    }
}

void MSM::collectInput()
{
    for(int ROWS = 0; ROWS < Size; ROWS++) {
        for(int COLS = 0; COLS < Size; COLS++) {
            cin >> matrix[ROWS][COLS];
        }
    }
}

void MSM::createMatrix()
{
    matrix = new int*[Size];
    for(int counter = 0; counter < Size; counter++) {
        matrix[counter] = new int[Size];
    }

    for(int ROWS = 0; ROWS < Size; ROWS++) {
        for(int COLS = 0; COLS < Size; COLS++) {
            matrix[ROWS][COLS] = 0;
        }
    }
}

void MSM::print() const
{
    cout << MaxSum;
}