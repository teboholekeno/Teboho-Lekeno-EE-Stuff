#include "graphs.h"


graphs::graphs()
{
}

graphs::~graphs()
{
}

void graphs::businessProfitGraph()
{
    Window_Size _Size;
    
    sf::RenderWindow window;
    window.create(sf::VideoMode(_Size.Get_Window_Dimensions()._width,_Size.Get_Window_Dimensions()._height),"Profit");
    
    //CREATING A RECTANGLE TO STORE THE MUSHROOM
    sf::RectangleShape mushroomRec(sf::Vector2f(50.f,50.f));
    sf::Texture mushroomTexture;
     
    
	while(window.isOpen())
    {
        sf::Event Event;
        while (window.pollEvent(Event))
        {
            switch(Event.type)
            {
                case sf::Event::Closed:
                    window.close();
            }
            
            window.draw(mushroomRec);
            window.display();
        }
    }
}

void graphs::collectProfitList()
{
    std::ifstream infile;
    
    try
    {
        if (infile.good())
        {
            std::ifstream infile ("profit.txt");
             
            while (!infile.eof())
            {
                
            }
        }
        else 
            throw exception();
    }
    catch (exception e)
    {
        e.File("profit.txt");
    }
}