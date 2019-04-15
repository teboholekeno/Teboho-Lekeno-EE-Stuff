#include "Graphics.h"

Graphics::Graphics()
{    
   // window_ptr = make_shared<sf::RenderWindow>(sf::VideoMode(_Size.Get_Window_Dimensions()._width, _Size.Get_Window_Dimensions()._height),"CENTIPEDE");
    //window.create(sf::VideoMode(_Size.Get_Window_Dimensions()._width,_Size.Get_Window_Dimensions()._height),"CENTIPEDE");
    
   Create_Sprite (_Player, _playertexture, "Player")
   Create_Sprite (_Mushroom, _mushroomtexture, "Mushroom");
   Create_Sprite (_Bullet, _bullettexture, "Bullet");
   Create_Sprite (_Centipede, _centipedetexture, "Centipede");
   
   _Player.setSize(sf::Vector2f(_Size.Get_Player_Width(),_Size.Get_Player_Height()));
   _Mushroom.setSize(sf::Vector2f(_Size.Get_Mushroom_Width(),_Size.Get_Mushroom_Height()));
   _Bullet.setSize(sf::Vector2f(_Size.Get_Bullet_Width(), _Size.Get_Bullet_Height()));
   _Centipede.setSize(sf::Vector2f(_Size.Get_Centipede_Width(), _Size.Get_Centipede_Height()));
}

Graphics::~Graphics()
{
}

//void Graphics::Check_Window()
//{    
 //   sf::Event Event;
    
 //   while (window_ptr->pollEvent(Event))
//    {
 //       switch(Event.type)
 //       {
//            case sf::Event::Closed:
 //           window_ptr->close();
///        }
 //   }
//}

void Graphics::Create_Sprite (sf::RectangleShape& Rec, sf::Texture& texture, std::string Object)
{
    if (Object == "Bullet")
        texture.loadFromFile("bullet.PNG");
    else if (Object == "Player")
        texture.loadFromFile("playership.png");
    else if (Object == "Mushroom")
        texture.loadFromFile("mushroom2.png");
    else if (Object == "Centipede")
    {
        texture.loadFromFile("centipede.png");
        
        imageHead.top = 12;
        imageHead.height = 8 ;
        imageHead.left = 0;
        imageHead.width =8;
        
        imageBody.top = 12;
        imageBody.height = 8 ;
        imageBody.left = 9;
        imageBody.width =8;
    }
    
    Rec.setTexture(&texture);
}
void Graphics::drawPlayer(const Player player, sf::RenderWindow& window)
{
    _Player.setPosition(player.Get_Coordinates().x, player.Get_Coordinates().y);
    window.draw(_Player);
}
void Graphics::drawMushroom(const vector <Mushroom> _MushroomVec, sf::RenderWindow& window)
{
    for (auto i = 0 ; i < _MushroomVec.size() ; i++ )
   { 
      MushroomVec.push_back(_Mushroom);
      MushroomVec[i].setPosition(_MushroomVec[i].Get_Coordinates().x,_MushroomVec[i].Get_Coordinates().y);
      window.draw(MushroomVec[i]);
   }
}
void Graphics::drawCentipede(vector <Centipede> _CentipedeVec, sf::RenderWindow& window)
{
    for (auto i = 0 ; i < _CentipedeVec.size() ; i++ )
   { 
      CentipedeVec.push_back(_Centipede);
      
      if (_CentipedeVec[i].Is_Head() == true)
         CentipedeVec[i].setTextureRect(imageHead);
       else 
         CentipedeVec[i].setTextureRect(imageBody);
        
      CentipedeVec[i].setPosition(_CentipedeVec[i].Get_Coordinates().x,_CentipedeVec[i].Get_Coordinates().y);
      window.draw(CentipedeVec[i]);
   }
}

void Graphics::drawBullet(const vector <Bullet> _bulletVec, sf::RenderWindow& window)
{
    for (auto i = 0 ; i < _bulletVec.size() ; i++ )
   { 
      BulletVec.push_back(_Bullet);
      BulletVec[i].setPosition(_bulletVec[i].Get_Coordinates().x,_bulletVec[i].Get_Coordinates().y);
      window.draw(BulletVec[i]);
   }
}
