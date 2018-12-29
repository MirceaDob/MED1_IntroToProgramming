class Flower {
  
 float r = 30;       // radius of the flower petal
 int n_petals = 7;  // number of petals 
 float fx;       // x-position of the center of the flower
 float fy;       // y-position of the center of the flower
 color cul = color(random(255), random(255), random(255)); // the color theme is random
 
Flower (float temp_x, float temp_y) { // temporary coordinates
  fx = temp_x;
  fy = temp_y;
}

void display () {
  
  float ballX;
  float ballY;
  
  fill(cul);
 
  for (float i=0; i<PI*2; i+=2*PI/n_petals) {
  ballX = width/2 + r*cos(i);
  ballY = height/2 + r*sin(i);
  ballX = fx + r*cos(i);
  ballY = fy + r*sin(i);
  ellipse(ballX,ballY,r,r); // draw petals
  }
  fill(cul*-1,0,0);
  ellipse(fx,fy,r*1.2,r*1.2); // draw center
}
}
