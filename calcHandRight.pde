float handRightX = 600;
float handRightY = 485;
int handRightWidth;
int handRightHeight;
float handRightR = 3.2;
boolean handRightUp = false;
PImage handRight;
PImage mug;

void calcHandRightXY()
{
  float changeIndex = handRightUp ? 0.01 : -0.01;
  
  pushMatrix();
  translate(handRightX + trainX - handRightR, handRightY + trainY - handRightR);
  rotate(handRightR);
  scale(-1.0, -1.0);
  image(handRight,-handRight.width, -handRight.height);
  popMatrix();
  
  legR+=changeIndex;
  
  image(mug, trainX, trainY);
  
  if (handRightR < 3.2) {
    handRightUp = true;
  } if (handRightR > 3.28) {
    handRightUp = false;
  }
  
  handRightR+=changeIndex;
}
