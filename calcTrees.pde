float tree1X;
float tree2X;
float tree3X;
float tree4X;
int tree1Width = 600;
int tree2Width = 800;
int tree3Width = 350;
int tree4Width = 580;
float tree1speed = 30;
float tree2speed = 15;
float tree3speed = 40;
float tree4speed = 10;
float wiresX = 0;
int wiresWidth = 1573;
PImage wires1;
PImage wires2;
PImage tree1;
PImage tree2;
PImage tree3;
PImage tree4;

void calcWiresTreesX()
{
  wiresX = wiresX - 20;
  if (wiresX <= -wiresWidth) {
    wiresX = 0;
  }
  
  tree1X = tree1X - tree1speed;
  if (tree1X <= -tree1Width) {
    tree1X = random(900, 4000);
  }
  tree2X = tree2X - tree2speed;
  if (tree2X <= -tree2Width) {
    tree2X = random(900, 4000);
  }
  tree3X = tree3X - tree3speed;
  if (tree3X <= -tree3Width) {
    tree3X = random(900, 4000);
  }
  tree4X = tree4X - tree4speed;
  if (tree4X <= -tree4Width) {
    tree4X = random(900, 4000);
  }
  
  image(tree4, tree4X, 70);
  image(tree2, tree2X, 70);
  
  image(wires1, wiresX, 0);
  image(wires2, wiresX + wiresWidth, 0);
  
  image(tree1, tree1X, 70);
  image(tree3, tree3X, 200);
}
