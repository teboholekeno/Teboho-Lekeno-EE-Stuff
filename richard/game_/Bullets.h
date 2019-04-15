#ifndef BULLETS_H
#define BULLETS_H
#include <SFML/Graphics.hpp>
#include <iostream>

class Bullets
{
public:
    Bullets(sf::Vector2f size);
    void fire(float speed){bullets.move(0, -speed);}
    int getTop() {return bullets.getPosition().x;}
    int getBottom(){return bullets.getPosition().y + bullets.getSize().y;}
    int getLeft(){return bullets.getPosition().x;}
    int getRight(){return bullets.getPosition().x + bullets.getSize().x;}
    void draw(sf::RenderWindow& window){window.draw(bullets);}
    void SetPosition(sf::Vector2f newPosition){bullets.setPosition(newPosition);}
    void Install_Texture(sf::RectangleShape&, sf::Texture&);
    ~Bullets();
private:
    sf::RectangleShape bullets;
    sf::Texture bulletsTexture;
};

#endif // BULLETS_H
