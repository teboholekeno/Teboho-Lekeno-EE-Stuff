#ifndef GRAPHICS_H
#define GRAPHICS_H
#include "Mushroom.h"
#include <SFML/Graphics.hpp>
#include "Player.h"
#include "Centipede.h"
#include "Bullet.h"
#include <vector>
#include <memory>

//using std::shared_ptr;
//using std::make_shared;
//using std::vector;

class Graphics
{
public:
    Graphics();
    void Create_Sprite (sf::RectangleShape&, sf::Texture&, std::string);
    ~Graphics();
    void drawPlayer(const Player, sf::RenderWindow&);
    void drawMushroom(const vector <Mushroom>, sf::RenderWindow&);
    void drawCentipede(vector <Centipede>, sf::RenderWindow&);
    void drawBullet(const vector <Bullet>, sf::RenderWindow&);
    void Check_Window();
    void display();
    
private:
    vector<sf::RectangleShape>  CentipedeVec, MushroomVec, BulletVec;
    sf::RectangleShape  _Player, _Mushroom, _Centipede, _Bullet;
    sf::Texture _playertexture, _mushroomtexture , _centipedetexture, _bullettexture;
    sf::IntRect imageHead, imageBody;
    Window_Size _Size;
};
 
#endif // GRAPHICS_H
