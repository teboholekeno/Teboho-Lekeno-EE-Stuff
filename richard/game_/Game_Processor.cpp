#include "Game_Processor.h"

Game_Processor::Game_Processor()
{
}

Game_Processor::~Game_Processor()
{
}

void Game_Processor::run()
{
    sf::RenderWindow window;
    Window_Size myWindow;
    window.create(sf::VideoMode(myWindow.Get_Window_Dimensions()._width,myWindow.Get_Window_Dimensions()._height),"CENTEPEDE");
    
    //CREATING THE PLAYER AND LOADING ITS TEXTURE
    Player player(sf::Vector2f(myWindow.Get_Player_Width(),myWindow.Get_Player_Height()));
    
    vector<Bullets> bulletVector;
    
    vector<Centepede> centepedeVector;                 //PURE C++ IMAGINERY CENTEPEDE VECTOR
    vector<sf::RectangleShape>::const_iterator iter;
	vector<sf::RectangleShape> rect_array;             //SFML PRESENTATION CENTEDE VECTOR
    
    //CREATION OF CENTEPEDE SFML PRESENTATION
    sf::RectangleShape rect(sf::Vector2f(20,20));
    sf::Texture texture;
    texture.loadFromFile("centipede.png");
    
    //SELECTING THE HEAD OF THE CENTEPEDE FROM SPRITE SHEET
    sf::IntRect imageHead;
    imageHead.top = 12;
    imageHead.height = 8 ;
    imageHead.left = 0;
    imageHead.width =8;
    
    //SELECTING THE BODY OF THE CENTEPEDE FROM THE SPRITE SHEET
    sf::IntRect imageBody;
    imageBody.top = 12;
    imageBody.height = 8 ;
    imageBody.left = 9;
    imageBody.width =8;
    rect.setTexture(&texture);
    
    //CREATION OF THE CENTEPEDE C++ AND PRESENTING IT ON SFML 
    for (auto counter = 0; counter < 5; counter++)
    {
        Centepede newCentepedeBody;
        newCentepedeBody.Set_Start_Position(10+counter,0);
        newCentepedeBody.default_direction ();
        centepedeVector.push_back(newCentepedeBody);
        rect_array[counter].setPosition((float)centepedeVector[counter].Get_Coordinates().x,(float)centepedeVector[counter].Get_Coordinates().y);
    }

    bool shoot = false;
    
    while (window.isOpen())
    {
        sf::Event Event;
        while (window.pollEvent(Event))
        {
            switch(Event.type)
            {
             case sf::Event::Closed:
                window.close();
            }
            
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right) && player.IsRightValid())
            {
                player.moveRight(); 
            } 
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left) && player.IsLeftValid()) 
            {
                player.moveLeft ();
            }
        
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Space)) 
                shoot = true;
        }
        
         window.clear();
         if (shoot)
            {
                Bullets newBullets (sf::Vector2f(10,5));
                newBullets.SetPosition(sf::Vector2f(player.GetX()+ myWindow.Get_Player_Width()*0.40, player.GetY()));
                bulletVector.push_back(newBullets);
                shoot = false;
            }
        
            for (auto counter = 0; counter < bulletVector.size(); counter++)
            {
                bulletVector[counter].draw(window);
                bulletVector[counter].fire(1);
                
            }
        
            player.draw(window);
        
           for (auto num1 = 0; num1 < centepedeVector.size(); num1++)
           {
                window.draw(rect_array[num1]);
                centepedeVector[num1].movement();
            }
        
            window.display();
    }
}


