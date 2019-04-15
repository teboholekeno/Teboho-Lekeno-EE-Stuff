#ifndef ALGORITHM1_H
#define ALGORITHM1_H
#include <iosream>

using namespace std;

class Algorithm1
{
public:
	Algorithm1();
	Algorithm1(int);
	void display() const;
	~Algorithm1();
private:
	int size;
	int** playing_grid_clone;

};

void Create_Dynamic_Grid (int**, int);
void Format_Dynamic_Memory (int**, int);
#endif // ALGORITHM1_H
