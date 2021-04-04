boolean steam1Showing = false;
boolean steam1Fading = false;
boolean steam2Showing = false;
boolean steam2Fading = true;
int steam1Opacity = 0;
int steam2Opacity = 1;
PImage steam1;
PImage steam2;

void calcSteam1XY()
{   
    tint(255, 255);
    
    if(millis() % 20 == 0 && !steam1Showing) {
        steam1Showing = true;
    }
    
    if (steam1Showing) {
        steam1Opacity += 10;
    } else if (steam1Fading) {
        steam1Opacity -= 10;
    }
    
    if (steam1Showing || steam1Fading) {
        tint(255, steam1Opacity);
        image(steam1, trainX, trainY);
    }
    
    if (steam1Opacity > 255) {
        steam1Showing = false;
        steam1Fading = true;
    }
    if (steam1Opacity <= 0 && steam1Fading) {
      steam1Fading = false;
    }
    
    tint(255, 255);
}

void calcSteam2XY()
{   
    tint(255, 255);
    
    if(millis() % 25 == 0 && !steam2Showing) {
        steam2Showing = true;
    }
    
    if (steam2Showing) {
        steam2Opacity += 10;
    } else if (steam2Fading) {
        steam2Opacity -= 10;
    }
    
    if (steam2Showing || steam2Fading) {
        tint(255, steam2Opacity);
        image(steam2, trainX, trainY);
    }
    
    if (steam2Opacity > 255) {
        steam2Showing = false;
        steam2Fading = true;
    }
    if (steam2Opacity <= 0 && steam2Fading) {
      steam2Fading = false;
    }
    
    tint(255, 255);
}
