float eyeLeftOpenX = 180;
float eyeLeftOpenY = 287;
float eyeLeftClosedX = 165;
float eyeLeftClosedY = 285;
int eyeLeftOpenWidth;
int eyeLeftOpenHeight;
int eyeLeftClosedWidth;
int eyeLeftClosedHeight;
int framesLeftEyeClosed = 0;
int framesLeftEyeOpen = 0;
int framesLeftEyeMoved = 0;
int framesLeftEyeNotMoved = 0;
boolean leftEyeClosed = false;
boolean leftEyeMoved = false;
PImage eyeLeftOpen;
PImage eyeLeftClosed;

void calcEyeLeftXY()
{
  if (leftEyeClosed) {
    framesLeftEyeClosed++;
    image(eyeLeftClosed, eyeLeftClosedX + trainX, eyeLeftClosedY + trainY);
  } else {
    framesLeftEyeOpen++;
    if(leftEyeMoved) {
      framesLeftEyeMoved++;
      image(eyeLeftOpen, eyeLeftOpenX + trainX - 5, eyeLeftOpenY + trainY);
    } else {
      framesLeftEyeNotMoved++;
      image(eyeLeftOpen, eyeLeftOpenX + trainX, eyeLeftOpenY + trainY);}
  }
  
  // counting frames of current eye state to avoid changing it too frequently or holding eyes closed for too long
  if ((millis() % 20 == 0 && round(random(0, 1)) == 1 && framesLeftEyeOpen > 30) || framesLeftEyeClosed > 3) {
    if (leftEyeClosed) {
      framesLeftEyeClosed = 0;
    } else {
      framesLeftEyeOpen = 0;
    }
    leftEyeClosed = !leftEyeClosed;
  }
  
  if (millis() % 20 == 0 && round(random(0, 1)) == 1 && (framesLeftEyeMoved > 10 || framesLeftEyeNotMoved > 15)) {
    if (leftEyeMoved) {
      framesLeftEyeMoved = 0;
    } else {
      framesLeftEyeNotMoved = 0;
    }
    leftEyeMoved = !leftEyeMoved;
  }
}
