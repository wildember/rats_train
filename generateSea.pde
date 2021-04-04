int seaY = 350;
int seaHeight = 250;
color seaHorizon = color(23,109,193);
color seaClose = color(76,175,158);

void generateSea()
{  
  for (int i = seaY; i <= seaY + seaHeight; i++) {
    float inter = map(i, seaY, seaY + seaHeight, 0, 1);
    color c = lerpColor(seaHorizon, seaClose, inter);
    stroke(c);
    line(0, i, width, i);
  }
    
  noStroke();
  fill(255, 90);
  
  for(int i = 0; i < 1000; i++) {
    float sparkleWidth = random(1,3);
    ellipse(random(width), seaY, sparkleWidth, sparkleWidth);
  }
  
  for(int i = 0; i < 1000; i++) {
    float sparkleWidth = random(1,3);
    ellipse(random(width), random(seaY, seaY + seaHeight), sparkleWidth, sparkleWidth);
  }
}
