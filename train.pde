//import processing.sound.*;
//SoundFile trainSound;

PImage sky;

float resizeIndexY = 0.417827298;
float resizeIndexX = 0.381066988;

void setup() {
  size(900, 700);
  frameRate(30);
  smooth();
  
  //trainSound = new SoundFile(this, "train.mp3");
  //anotherTrainSound = new SoundFile(this, "another_train.mp3");
  //trainSound.play();
  
  sky = loadImage("sky.png");  
  
  train = loadImage("train_rats.PNG");
  anotherTrain = loadImage("another_train.PNG");
  wires1 = loadImage("wires.png");
  wires2 = loadImage("wires.png");
  hillsGreen1 = loadImage("hills_green.PNG");
  hillsGreen2 = loadImage("hills_green.PNG");
  hillsBlue1 = loadImage("hills_blue.PNG");
  hillsBlue2 = loadImage("hills_blue.PNG");
  tree1 = loadImage("tree1.PNG");
  tree2 = loadImage("tree2.PNG");
  tree3 = loadImage("tree3.PNG");
  tree4 = loadImage("tree4.PNG");
  
  tail = loadImage("tail.PNG");
  handLeft = loadImage("hand_left.PNG");
  handRight = loadImage("hand_right.PNG");
  eyeLeftOpen = loadImage("eye_left_open.png");
  eyeRightOpen = loadImage("eye_right_open.png");
  eyeLeftClosed = loadImage("eye_left_closed.png");
  eyeRightClosed = loadImage("eye_right_closed.png");
  leg1 = loadImage("leg_right_1.PNG");
  leg2 = loadImage("leg_right_2.PNG");
  whiskersLeft = loadImage("whiskers_left.PNG");
  whiskersRight = loadImage("whiskers_right.PNG");
  
  mug = loadImage("mug.PNG");
  knee = loadImage("knee.PNG");
  steam1 = loadImage("steam1.PNG");
  steam2 = loadImage("steam2.PNG");
  
  light = loadImage("light.PNG");
  shadow = loadImage("shadow.PNG");
  
  tree1X = random(0, 4000);
  tree2X = random(0, 4000);
  tree3X = random(0, 4000);
  tree4X = random(0, 4000);
}

void draw() 
{  
  clear();
    
  sky.resize(700, 500);
  
  tree1.resize(tree1Width, ceil(tree1Width * .71));
  tree2.resize(tree2Width, ceil(tree2Width * .57));
  tree3.resize(tree3Width, ceil(tree3Width * .84));
  tree4.resize(tree4Width, ceil(tree4Width * .74));
  wires1.resize(wiresWidth, 500);
  wires2.resize(wiresWidth, 500);
  hillsGreen1.resize(hillsGreenWidth, ceil(hillsGreenWidth * .22));
  hillsGreen2.resize(hillsGreenWidth, ceil(hillsGreenWidth * .22));
  hillsBlue1.resize(hillsBlueWidth, ceil(hillsGreenWidth * .33));
  hillsBlue2.resize(hillsBlueWidth, ceil(hillsGreenWidth * .33));
  
  train.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  mug.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  knee.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  steam1.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  steam2.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  light.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  shadow.resize(round(2493 * resizeIndexX), round(1795 * resizeIndexY));
  
  anotherTrainWidth = round(16369 * resizeIndexX);
  anotherTrainHeight = round(1878 * resizeIndexY);
  anotherTrain.resize(anotherTrainWidth, anotherTrainHeight);
  
  tailWidth = round(141 * resizeIndexX);
  tailHeight = round(828 * resizeIndexY);
  tail.resize(tailWidth, tailHeight);
  
  handLeftWidth = round(253 * resizeIndexX);
  handLeftHeight = round(185 * resizeIndexY);
  handLeft.resize(handLeftWidth, handLeftHeight);
  
  handRightWidth = round(206 * resizeIndexX);
  handRightHeight = round(276 * resizeIndexY);
  handRight.resize(handRightWidth, handRightHeight);
  
  eyeLeftOpenWidth = round(141 * resizeIndexX);
  eyeLeftOpenHeight = round(133 * resizeIndexY);
  eyeLeftOpen.resize(eyeLeftOpenWidth, eyeLeftOpenHeight);
  
  eyeRightOpenWidth = round(101 * resizeIndexX);
  eyeRightOpenHeight = round(97 * resizeIndexY);
  eyeRightOpen.resize(eyeRightOpenWidth, eyeRightOpenHeight);
  
  eyeLeftClosedWidth = round(176 * resizeIndexX);
  eyeLeftClosedHeight = round(145 * resizeIndexY);
  eyeLeftClosed.resize(eyeLeftClosedWidth, eyeLeftClosedHeight);
  
  eyeRightClosedWidth = round(154 * resizeIndexX);
  eyeRightClosedHeight = round(128 * resizeIndexY);
  eyeRightClosed.resize(eyeRightClosedWidth, eyeRightClosedHeight);
  
  whiskersLeftWidth = round(683 * resizeIndexX);
  whiskersLeftHeight = round(243 * resizeIndexY);
  whiskersLeft.resize(whiskersLeftWidth, whiskersLeftHeight);
  
  whiskersRightWidth = round(419 * resizeIndexX);
  whiskersRightHeight = round(488 * resizeIndexY);
  whiskersRight.resize(whiskersRightWidth, whiskersRightHeight);
  
  leg1Width = round(350 * resizeIndexX);
  leg1Height = round(138 * resizeIndexY);
  leg1.resize(leg1Width, leg1Height);
  
  leg2Width = round(353 * resizeIndexX);
  leg2Height = round(141 * resizeIndexY);
  leg2.resize(leg2Width, leg2Height);
  
  image(sky, 100, 0);
  
  generateSea();
  
  calcHillsX();
  calcWiresTreesX();
  calcAnotherTrain();
  calcTrainXY();
  
  calcTailXY();
  calcHandLeftXY();
  calcSteam1XY();
  calcHandRightXY();
  calcSteam2XY();
  calcEyeLeftXY();
  calcEyeRightXY();
  calcLegsXY();
  calcWhiskersLeftXY();
  calcWhiskersRightXY();
  calcLightShadow();
}
