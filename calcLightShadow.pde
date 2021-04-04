boolean lightShowing = false;
boolean lightFading = false;
boolean shadowShowing = false;
boolean shadowFading = false;
int lightOpacity = 150;
float anotherTrainX = 4000;
float anotherTrainSoundVolume = 1;
int anotherTrainWidth;
int anotherTrainHeight;
boolean trainWasShown = false;
boolean showingTrain = false;
PImage light;
PImage shadow;
PImage anotherTrain;
//SoundFile anotherTrainSound;

void calcAnotherTrain()
{
  if (millis() > 2000 && !trainWasShown && round(random(0, 1)) == 1) {
    showingTrain = true;
  }
  if (showingTrain) {
    //anotherTrainSound.play();
    image(anotherTrain, anotherTrainX, 0);
    anotherTrainX -= 70;
    if (anotherTrainX <= -anotherTrainWidth) {
      showingTrain = false;
      trainWasShown = true;
      //anotherTrainSound.pause();
    }
  }
}

void calcLightShadow()
{
  if (showingTrain && anotherTrainX <= -100 && anotherTrainX >= -anotherTrainWidth + 400) {
    image(shadow, 0, 0);
    if (anotherTrainX < -150) {
      tint(255, 255);
      tint(255, 175);
      image(shadow, 0, 0);
      tint(255, 255);
    }
  }
  if (showingTrain && anotherTrainX < -anotherTrainWidth + 400 && lightOpacity > 0) {
    tint(255, 255);
    lightOpacity -= 10;
    tint(255, lightOpacity);
    image(light, 0, 0);
    tint(255, 255);
    //anotherTrainSoundVolume -= .2;
    //anotherTrainSound.amp(anotherTrainSoundVolume);
  }
}
