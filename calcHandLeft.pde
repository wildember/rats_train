float handLeftX = 185;
float handLeftY = 496;
int handLeftWidth;
int handLeftHeight;
float handLeftR = 0;
int handUpFrames = 0;
int handDownFrames = 0;
int handCalmFrames = 0;
boolean handLeftDown = true;
PImage handLeft;

void calcHandLeftXY()
{
  pushMatrix();
  translate(handLeftX + (handLeftR * 10) + trainX, handLeftY + trainY);
  rotate(handLeftR);
  image(handLeft, 0, 0);
  popMatrix();
  
  if (handCalmFrames > 30) {
      handCalmFrames = 0;
  } else {
      handCalmFrames++;
      return;
  } 
  
  if (handLeftDown) {
    handUpFrames++;
  } else {
    handDownFrames++;
  }
  
  if (round(random(0, 1)) == 1 && (handDownFrames > 20 || handUpFrames > 30)) {
    if (handLeftDown) {
      handUpFrames = 0;
    } else {
      handDownFrames = 0;
    }
    handLeftDown = !handLeftDown;
  }
  
  float changeIndex = handLeftDown ? 0.02 : -0.1;
  handLeftR+=changeIndex;
  
  if (handLeftR < -.2) {
    handLeftDown = true;
  } if (handLeftR > 0) {
    handLeftDown = false;
  }
}
