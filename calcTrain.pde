float trainX = -50;
float trainY = -50;
boolean trainLeft = false;
boolean trainUp = false;
PImage train;

void calcTrainXY()
{
  if (trainLeft) {
    trainX = trainX+1;
    if (trainX >= -25) {
      trainLeft = !trainLeft;
    }
  } else {
    trainX = trainX-1;
    if (trainX <= -50) {
      trainLeft = !trainLeft;
    }
  }
  
  trainUp = (trainY < -40) && ((trainLeft && trainX <= -35) || (!trainLeft && trainX >= -35));
  if (trainX % 2 == 0) {
    trainY = trainUp ? trainY + 1 : trainY - 1;
  }
  
  image(train, trainX, trainY);
}
