class Flower {
  
 float r = 20;       // radius of the flower petal
 int n_petals = 9;  // number of petals 
 float x = random(20,width);       // x-position of the center of the flower
 float y = random(20,height);       // y-position of the center of the flower
 float spdx = random(3,5);
 float spdy = random(3,5);
 color cul1 = color(255, 0, 0); // 
 color cul2 = color(0, 255, 255); //
 
Flower(float x, float y) { // constructor
  this.x = x;
  this.y = y;
}

void display () {
  
  float petX; // petals coordinates
  float petY;
  
  fill(cul2);
  for (float i = 0; i < PI*2; i += 2*PI/n_petals) {
  petX = x + r*cos(i);
  petY = y + r*sin(i);
  ellipse(petX,petY,r,r); // draw petals
  }
  fill(cul1);
  ellipse(x,y,r*1.2,r*1.2); // draw center
}

void wallCollision() { // collision between the flower and the walls
 if (Start) {
    x += spdx;
    y += spdy;
  
  if ((y <= r*1.5) || (y >= height - r*1.5)) { // the flower bounces off the top and bottom walls
    spdy = -spdy;
    y += spdy;
  }
  if (x <= r*1.5) { // the flower bounces off the left wall
    spdx = -spdx;
    x += spdx;
  }
}
}

void scoreFlower() {
  if ((x > width - r*1.5 - pad1W) && (y > mouseY - pad1H / 2) && (y < mouseY + pad1H / 2)) { // if the flower hits the pad it bounces off and the score increases by 10
      flowerHit.play();
      spdx = spdx * 1.1;
      spdx = -spdx;
      x += spdx;
      scor += 10;
  }

  if (x > width) { // if the flower hits the right wall instead of the pad it resets the STREAK COUNTER 
    ballMiss.play();
    streak = false;
    x = random(20,width);
    y = random(20,height);
    spdx = random(3,5);
    spdy = random(3,5);
  }
}
}
