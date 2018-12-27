int _r1= 60; // flower radius
int _petals=7; // number of petals
float _x; // x coordinate of the flower
float _y; // y coordinate of the flower
float spdX=random(3,5); // speed value on x axis
float spdY=random(3,5); // speed value on y axis
Flower myFlower; // make an instance of the Flower class
color cul=color(random(255), random(255), random(255)); // the color theme is random


void setup() {
  size(1600,1000);
  _x = width/2; // initial coordinates for the flower
  _y = height/2;//
   
}

void draw(){
  background(cul/2);
  textSize(30);
  text("Left click changes color", 15, 30); 
  text("Right click reverses movement direction", 15, 60);
  fill(cul*(-1));
  
  myFlower = new Flower(_r1,_petals,_x,_y,cul);
  myFlower.display();
  _x = _x + spdX; // move the flower on x axis
  _y = _y + spdY; // move the flower on y axis
  if ((_y <= _r1*1.5) || (_y >= height - _r1*1.5)) { //the flower bounces off the top and bottom walls
    spdY = -spdY;
    _y = _y + spdY;
  }
  if ((_x <= _r1*1.5) || (_x >= width - _r1*1.5)) { //the flower bounces off the left and right walls
    spdX = -spdX;
    _x = _x + spdX;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) { // click the left mouse button to change colors 
      cul = color(random(255), random(255), random(255));
    background(cul * -1);
  }
  if (mouseButton == RIGHT) { // click the right mouse button to reverse direction 
    spdX = -spdX;
    spdY = -spdY;
    }
}
