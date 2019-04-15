#include "Game.h"

Game::Game()
{
}

Game::~Game()
{
}

void Game::run()
{
    Window_Size _Size;
    Graphics graphics;
    Player player;
    Mushroom mushroom;
    Collision collision;
    Bullet bullet;
    Centipede centipede;
    
    vector <Bullet> bulletVector;
    vector <Centipede> CentipedeBodies;
    
    sf::RenderWindow window;
    window.create(sf::VideoMode(_Size.Get_Window_Dimensions()._width,_Size.Get_Window_Dimensions()._height),"CENTIPEDE");
    sf::RectangleShape GAMEover(sf::Vector2f(_Size.Get_Window_Dimensions()._width,_Size.Get_Window_Dimensions()._height));
    GAMEover.setFillColor(sf::Color::Red);
    
	centipede.Create_Centipede (CentipedeBodies); //CREATING CENTIPEDE BODY VECTOR
  
    //CREATING A RECTANGLE TO STORE THE MUSHROOM
    sf::RectangleShape mushroomRec(sf::Vector2f(_Size.Get_Mushroom_Width(),_Size.Get_Mushroom_Height()));
    sf::Texture mushroomTexture;
    graphics.Create_Sprite(mushroomRec, mushroomTexture, "Mushroom");
     
    //INITIALIZING MUSHROOM VECTOR
    vector <Mushroom> mushroomVector;
    vector<sf::RectangleShape>::const_iterator iti;
	vector<sf::RectangleShape> MushroomRec_array;
    
    //CREATING MUSHROOMS
    mushroom.Create_Mushrooms(mushroomVector, CentipedeBodies);
    for (auto counter = 0; counter < mushroomVector.size(); counter++)
    {
        MushroomRec_array.push_back(mushroomRec);
        MushroomRec_array.at(counter).setPosition(mushroomVector.at(counter).Get_Coordinates().x, mushroomVector.at(counter).Get_Coordinates().y);
    }
    
    
	clock_t start_Centipede = clock(); 
    
    bool shoot = false;
    
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
            
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right) && !collision.Is_Collision(player,mushroomVector,Direction::RIGHT))
                player.moveRight(); 
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left) && !collision.Is_Collision(player,mushroomVector,Direction::LEFT)) 
                player.moveLeft();
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up) && !collision.Is_Collision(player,mushroomVector,Direction::UP))
                player.moveUp(); 
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down) && !collision.Is_Collision(player,mushroomVector,Direction::DOWN)) 
                player.moveDown();

    
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Space)) 
                shoot = true;
        }

        window.clear();
       
        graphics.drawPlayer(player, window);
        
        //CREATING A NEW BULLET
        bullet.Create_Bullet(bulletVector, Bullet(player), shoot);
        
        //MOVING CREATED BULLETS
        bullet.move(bulletVector);
        graphics.drawBullet(bulletVector, window);
        
        
        //DRAWING THE CREATED MUSHROOMS
        for (auto counter = 0; counter < mushroomVector.size(); counter++)
        {
            window.draw(MushroomRec_array[counter]);
        }
        
        
        //MOVING THE CENTIPEDE
        if(((clock()-start_Centipede)) >= 4)
        {
			for (auto num = 0; num < CentipedeBodies.size(); num++)
			{
				CentipedeBodies[num].movement();
			} 
    
            graphics.drawCentipede(CentipedeBodies, window);
			window.display();
            start_Centipede = clock();
		}
            
        for (auto num = 0; num < CentipedeBodies.size(); num++)
        {
            //CHECKING PLAYER COLLISION WITH THE CENTIPEDE
            if (collision.Is_Collision (player,CentipedeBodies[num]))
                player.Damage();
                 
                //CHECKING BULLET COLLISION WITH THE CENTIPEDE
                for (auto counter = 0; counter < bulletVector.size(); counter++)
                {
                    if (collision.Is_Collision (bulletVector[counter],CentipedeBodies[num]))
                    {
                        mushroom.Create_Mushroom (mushroomVector,CentipedeBodies[num].Get_Coordinates().x, CentipedeBodies[num].Get_Coordinates().y);
                        MushroomRec_array.push_back(mushroomRec); //creating the new mushroom at the location of destroyed Centipede body
                        MushroomRec_array.at(MushroomRec_array.size()-1).setPosition(CentipedeBodies[num].Get_Coordinates().x, CentipedeBodies[num].Get_Coordinates().y);
                        CentipedeBodies[num+1].Create_Head();
                        CentipedeBodies[num].Destroy_Centipede(CentipedeBodies, num);  // destroying the shot Centipede body
                        bulletVector[counter].Destroy_Bullet(bulletVector, counter);   // destroying the used bullet
                    }
                }
        }
        
        for (auto num = 0; num < CentipedeBodies.size(); num++)
        {
            //CHECKING MUSHROOM COLLISION WITH THE CENTIPEDE
            for (auto counter = 0; counter < mushroomVector.size(); counter++)
            {
                if (collision.Is_Collision (mushroomVector.at(counter), CentipedeBodies.at(num)))
                {
                    CentipedeBodies.at(num).Update_Direction();
                }
            }
        }
        
        for (auto num = 0; num < bulletVector.size(); num++)
        {
            for (auto counter = 0; counter < mushroomVector.size(); counter++)
            {
                if (collision.Is_Collision (mushroomVector.at(counter), bulletVector.at(num)))
                {
                    mushroomVector.at(counter).Damage();
                    //bulletVector[num].Destroy_Bullet(bulletVector, num);
                    bulletVector[num].setCollision();
                    if (mushroomVector.at(counter).getLife() <= 0)
                    {  
                        mushroomVector.at(counter).Destroy_Mushroom(mushroomVector,counter);
                        MushroomRec_array.erase(MushroomRec_array.begin() + counter);
                    }
                }
            }
        }  
        if(player.getLife() <= 0)
        {
            
        
        }
        if(  CentipedeBodies.size() == 0)
        {
            while(true)
            {
                GAMEover.setFillColor(sf::Color::Green);
                window.draw(GAMEover);
                window.display();
            }
        }
    }
}
