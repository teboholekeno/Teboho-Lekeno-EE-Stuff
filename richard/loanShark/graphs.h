#ifndef GRAPHS_H
#define GRAPHS_H
#include <SFML/Graphics.hpp>
#include "Window_Size.h"

class graphs
{
public:
    graphs();
    ~graphs();
    void businessProfitGraph();
private:
    Window_Size _Size;
    std::vector <double> profit_list;
    void collectProfitList();
};

#endif // GRAPHS_H
