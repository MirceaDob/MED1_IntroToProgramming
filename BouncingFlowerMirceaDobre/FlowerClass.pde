
class Flower {
  
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor = cul;//random color for the petals
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) { // defining parameters such as radius, number of petals, coordinates..
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
}

void display () {
  
  float ballX;
  float ballY;
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=width/2 + r*cos(i);
  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); // draw petals
  }
  fill(petalColor*-1,0,0);
  ellipse(x,y,r*1.2,r*1.2); // draw center
}

}
