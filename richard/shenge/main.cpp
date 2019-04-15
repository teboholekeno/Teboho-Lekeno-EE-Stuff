#include <stdio.h>
#include <time.h>
#include <iostream>

int main(int argc, char **argv)
{
	clock_t start_Centipede = clock(); 
    
      while (true){  //MOVING THE CENTIPEDE
        if(((clock()-start_Centipede)/1000) >= 120)
        {
            std::cout << "hello";
            start_Centipede = clock();
            break;
      }}
            
	return 0;
}
