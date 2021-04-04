int whiskersRightWidth;
int whiskersRightHeight;
float whiskersRightX = 570;
float whiskersRightY = 333;
boolean whiskersRightUp = false;
PImage whiskersRight;

void calcWhiskersRightXY()
{
  if (millis() % 25 == 0 && !whiskersRightUp) {
      whiskersRightUp = true;
    } else {
      whiskersRightUp = false;
    }
    
    if (whiskersRightUp) {
      pushMatrix();
      translate(whiskersRightX + trainX + 10, whiskersRightY + trainY - 5);
      rotate(.1);
      image(whiskersRight, 0, 0);
      popMatrix();
    } else {
      image(whiskersRight, whiskersRightX + trainX, whiskersRightY + trainY);
    }
}
