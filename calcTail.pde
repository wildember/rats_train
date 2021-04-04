float tailX = 832;
float tailY = 153;
int tailWidth;
int tailHeight;
float tailR = 0;
PImage tail;

void calcTailXY()
{
  pushMatrix();
  translate(tailX + trainX, tailY + trainY);
  rotate(tailR);
  image(tail,0,0);
  float changeIndex = trainLeft ? 0.002 : -0.002;
  tailR+=changeIndex;
  popMatrix();
}
