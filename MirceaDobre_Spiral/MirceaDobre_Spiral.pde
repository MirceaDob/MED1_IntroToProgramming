float r = 1; //radius
float theta = 0; //angle
float blue = 1; //circle color
float circleSize = 16; //circle size
float n = 1; //number for incrementing size/ color

void setup() {
  size(400,400);
  background(255);
}

void draw() {
  float s = noise(circleSize) * 20; //change circle size
  float c = noise(blue) * 255; //change value for blue color
  float x = r * cos(theta); //x coordinate for the next circle in the spiral
  float y = r * sin(theta); //y coordinate for the next circle in the spiral
  
  circleSize += n; //change circle size
  blue += n; //change shade of blue
  
  noStroke();
  fill(0,0,c); //use current shade of blue to color the next circle
  ellipse(x + width/2, y + height/2, s, s); //draw the next circle
  
  theta += 0.01; //increase the angle so that the result is a spiral, not a circle 
  r += 0.05; //increase the radius so that the result is a spiral, not a circle
}
