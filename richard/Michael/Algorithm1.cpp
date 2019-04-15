#include "Algorithm1.h"

Algorithm1::Algorithm1()
{
}

Algorithm1::~Algorithm1()
{
}

Algorithm1::Algorithm1(int size)
{
    this->size = size;
    
    Create_Dynamic_Grid (playing_grid_clone, size);
    Format_Dynamic_Memory (playing_grid_clone, size);
}

void Create_Dynamic_Grid (int** A, int size)
{
    A = new int* [size];
    
    for (auto _rows = 0; _rows < size; _rows++)
    {
        A[_rows] = new int [size];
    }
}

void Format_Dynamic_Memory (int** A, int size)
{
    for (auto rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
            if ((rows == 0  || rows == size -1 )&& (columns == 0 || columns == size - 1))
			{
				A[rows][columns] = 100;
			}
			else if ((rows == 1 || rows == size -2)&& (columns == 1 || columns == size - 2))
			{
				A[rows][columns] = -20;
			}
			else if ((rows == 2 || rows == size -3)&& (columns == 2 || columns == size - 3))
			{
				A[rows][columns] = 10;
			}
			else if (((rows >= 3 && rows <= size -4) && (columns == 0 || columns == size -4))||
			((columns >= 3 && columns <= size -4) && (rows == 0 || rows == size -1)))
			{
				A[rows][columns] = 5;
			}
			else
			{
				A[rows][columns] = -1;
			}
        }
    }
}

void Algorithm1::display() const
{
	for (auto rows = 0; rows < size; rows++)
    {
        for (auto columns = 0; columns < size; columns++)
        {
			cout << playing_grid_clone[rows][columns] << " ";
        } cout << endl;
    }
}


