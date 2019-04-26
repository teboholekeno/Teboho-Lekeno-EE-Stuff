#include "Storage.h"
#include <fstream>

Storage::Storage()
{
    Format_Storage_File();
}

Storage::~Storage()
{
}

void Storage::Store_Current_Board_Size(int size)
{
    ofstream outfile ("results.txt", ios::out | ios::app);
    outfile << "size = " << size << endl;
    outfile.close();
}

void Storage::Store_Coordinates_Played(string identity, int x, int y)
{
    ofstream outfile ("results.txt", ios::out | ios::app);
    outfile << "r" << x << "c" << y << " " << identity << ", ";
    outfile.close(); 
}

void Storage::Store_Turned_Coordinates(vector <turnedPiece> E)
{
    ofstream outfile ("results.txt", ios::out | ios::app);
    
    for (int counter = 0; counter < E.size(); counter++)
    {
        outfile << "r" << E.at(counter).x << "c" << E.at(counter).y << " ";
    } 
    outfile << endl;
}

void Storage::Format_Storage_File()
{
    ofstream outfile ("results.txt");
    outfile << "";
    outfile.close();
}

void Storage::Store_Winning_Details (Current_Playing_Board E, Algorithm1 A1, Algorithm2 A2)
{
    int A1_score(0), A2_score(0);
    
    for (int rows = 0; rows < E.Get_Board_Size(); rows++)
    {
        for (int columns = 0; columns < E.Get_Board_Size(); columns++)
        {
            if (E.Get_Marker(rows, columns) == A1.Get_Marker())
                A1_score++;
            if (E.Get_Marker(rows, columns) == A2.Get_Marker())
                A2_score++;
        }
    }
    
    ofstream outfile ("results.txt", ios::out | ios::app);
    outfile << A1.Get_Indentity() << " = " << A1_score << endl;
    outfile << A2.Get_Indentity() << " = " << A2_score << endl;
    
    if (A1_score > A2_score)
        outfile << "win = " << A1.Get_Indentity() << endl << endl;
    else if (A1_score < A2_score)
        outfile << "win = " << A2.Get_Indentity() << endl << endl;
    else
        outfile << "win =  draw" << endl << endl;
}