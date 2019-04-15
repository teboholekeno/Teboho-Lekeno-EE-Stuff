#include "Bullets.h"

Bullets::Bullets(sf::Vector2f size)
{
    bullets.setSize(size); 
    Install_Texture(bullets,bulletsTexture);
}


void Bullets::Install_Texture(sf::RectangleShape& object, sf::Texture& texture)
{
    if (!texture.loadFromFile("bullet.png"))
        std::cout << "picture not found" << std::endl;
    bullets.setTexture(&bulletsTexture);
}

Bullets::~Bullets(){}