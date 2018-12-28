BallClass[] balls;

boolean Start = false;//keeps track of Play/Pause

float balX=random(width);//x coordinate for ball
float balY=random(height);//y coordinate for ball
float pad1X;//x coordinate for the paddle
float pad1Y;//y coordinate for the paddle
float pad1W=30;//paddle width
float pad1H=200;//paddle height

int scor=0;//score
int edge=10;//size of the window edge

color cul=color(random(255), random(255), random(255));

void setup() {
size(1600,1000);
background(#080808);
noStroke();
smooth(4);
pad1X=width-pad1W;//placing the pad on the right hand side of the window
textSize(60);
balls = new BallClass[3]; //array for generating 3 balls
balls[0] = new BallClass(random(20,width/5), random(20,height-10));
balls[1] = new BallClass(random(20,width/5), random(20,height-10));
balls[2] = new BallClass(random(20,width/5), random(20,height-10));
}

void draw() {
  background(cul * -1);
  fill(cul);
  //putting text on the screen - playing instructions and score
  textSize(20);
  text("Left click to Play/Pause ", width - 1300, height-300);
  text("Right click to change colors ", width - 1300, height-200);
  textSize(50);
  text("Score: ", width - 500, 100);
  text(scor, width - 200, 100);
  fill(#2DC940);
  //making borders for the top, bottom and lefthand side walls
  rect(0, 0, width, edge);
  rect(0, height - edge, width, edge); 
  rect(0, 0, edge, height);
  fill(#FA340D);
  //making border for the right hand side wall
  rect(width - edge, 0, edge, height);
  fill(cul);
  //making the paddle
  rect(pad1X, pad1Y, pad1W, pad1H, 10);
  
  if (mouseY <= height) {
    pad1Y = mouseY - pad1H / 2; //the cursor is set in the middle of the pad
  }
  
  for (int i = 0; i < balls.length; i++){//generates the balls
    BallClass ball = balls[i];
    
    ball.makeBall();
    ball.wallCollision();
    ball.scoreBall();
  }
}
  
void mousePressed() {
  if (mouseButton == LEFT) { //click left mouse button to start / pause the game 
   Start = !Start;
  }
  else if (mouseButton == RIGHT) { // right mouse button changes colors
    cul = color(random(255), random(255), random(255));
    background(cul * -1);
    }
}
