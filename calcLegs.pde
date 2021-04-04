float leg1X = 772;
float leg1Y = 730;
int leg1Width;
int leg1Height;
float leg2X = 760;
float leg2Y = 670;
int leg2Width;
int leg2Height;
boolean leg1Up = true;
float legR = 3.5;
PImage leg1;
PImage leg2;
PImage knee;

void calcLegsXY()
{
  float changeIndex = leg1Up ? .025 : -.025;
  
  pushMatrix();
  translate(leg2X + trainX, leg2Y + trainY);
  rotate(legR - .7);
  scale(-1.0, -1.0);
  image(leg2,-leg2.width, -leg2.height);
  popMatrix();
  
  pushMatrix();
  translate(leg1X + trainX, leg1Y + trainY);
  rotate(-legR);
  scale(-1.0, -1.0);
  image(leg1,-leg1.width, -leg1.height);
  popMatrix();
  
  legR+=changeIndex;
  
  if (legR < 3) {
    leg1Up = true;
  } if (legR > 3.5) {
    leg1Up = false;
  }
  
  image(knee, trainX, trainY);
}
