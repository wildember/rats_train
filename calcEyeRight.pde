float eyeRightOpenX = 670;
float eyeRightOpenY = 380;
float eyeRightClosedX = 675;
float eyeRightClosedY = 373;
int eyeRightOpenWidth;
int eyeRightOpenHeight;
int eyeRightClosedWidth;
int eyeRightClosedHeight;
int framesRightEyeClosed = 0;
int framesRightEyeOpen = 0;
int framesRightEyeMoved = 0;
int framesRightEyeNotMoved = 0;
boolean rightEyeClosed = false;
boolean rightEyeMoved = false;
PImage eyeRightOpen;
PImage eyeRightClosed;

void calcEyeRightXY()
{
  if (rightEyeClosed) {
    framesRightEyeClosed++;
    image(eyeRightClosed, eyeRightClosedX + trainX, eyeRightClosedY + trainY);
  } else {
    framesRightEyeOpen++;
    if(rightEyeMoved) {
      framesRightEyeMoved++;
      image(eyeRightOpen, eyeRightOpenX + trainX + 5, eyeRightOpenY + trainY - 5);
    } else {
      framesRightEyeNotMoved++;
      image(eyeRightOpen, eyeRightOpenX + trainX, eyeRightOpenY + trainY);}
  }
  
  // counting frames of current eye state to avoid changing it too frequently or holding eyes closed for too long
  if ((millis() % 20 == 0 && round(random(0, 1)) == 1 && framesRightEyeOpen > 30) || framesRightEyeClosed > 2) {
    if (rightEyeClosed) {
      framesRightEyeClosed = 0;
    } else {
      framesRightEyeOpen = 0;
    }
    rightEyeClosed = !rightEyeClosed;
  }
  
  if (millis() % 20 == 0 && round(random(0, 1)) == 1 && (framesRightEyeMoved > 10 || framesRightEyeNotMoved > 20)) {
    if (rightEyeMoved) {
      framesRightEyeMoved = 0;
    } else {
      framesRightEyeNotMoved = 0;
    }
    rightEyeMoved = !rightEyeMoved;
  }
}
