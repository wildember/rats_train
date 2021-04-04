float hillsGreenX = -30;
float hillsBlueX = 0;
float hillsBlueY = 200;
float hillsGreenY = 230;
int hillsGreenWidth = 1000;
int hillsBlueWidth = 1200;
PImage hillsGreen1;
PImage hillsBlue1;
PImage hillsGreen2;
PImage hillsBlue2;

void calcHillsX()
{
  hillsGreenX = hillsGreenX - 10;
  if (hillsGreenX <= -hillsGreenWidth) {
    hillsGreenX = 0;
  }
  hillsBlueX = hillsBlueX - 5;
  if (hillsBlueX <= -hillsBlueWidth) {
    hillsBlueX = 0;
  }
  
  image(hillsBlue1, hillsBlueX, hillsBlueY);
  image(hillsBlue2, hillsBlueX + hillsBlueWidth, hillsBlueY);
  
  image(hillsGreen1, hillsGreenX, hillsGreenY);
  image(hillsGreen2, hillsGreenX + hillsGreenWidth, hillsGreenY);
}
