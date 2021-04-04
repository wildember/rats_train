int whiskersLeftWidth;
int whiskersLeftHeight;
float whiskersLeftX = 87;
float whiskersLeftY = 300;
boolean whiskersLeftUp = false;
PImage whiskersLeft;

void calcWhiskersLeftXY()
{
    if (millis() % 30 == 0 && !whiskersLeftUp) {
      whiskersLeftUp = true;
    } else {
      whiskersLeftUp = false;
    }
    
    if (whiskersLeftUp) {
      pushMatrix();
      translate(whiskersLeftX + trainX - 3, whiskersLeftY + trainY + 30);
      rotate(-.15);
      image(whiskersLeft, 0, 0);
      popMatrix();
    } else {
      image(whiskersLeft, whiskersLeftX + trainX, whiskersLeftY + trainY);
    }
    
}
