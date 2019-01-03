import processing.sound.*; // sound library with sounds for different game events ; the names are self explanatory
SoundFile ballHit;
SoundFile flowerHit;
SoundFile flowerShow;
SoundFile ballMiss;

BallClass[] balls;
Court court;
Flower flower;

boolean Start = false; // keeps track of Play/Pause
boolean streak = false; // keeps track of hitting balls in a row, without missing

float balX = random(width); // x coordinate for ball
float balY = random(height); // y coordinate for ball
float pad1X; // x coordinate for the paddle
float pad1Y; // y coordinate for the paddle
float pad1W = 30; // paddle width
float pad1H = 200; // paddle height

int scor = 0; // score
int edge = 10; // size of the window edge
int ft = 0; // when it gets to 10, the user can generate a flower

color cul = color(random(255), random(255), random(255)); // random color for balls and background

void setup() {
size(1600,1000);
background(#080808);
noStroke();
smooth(4);
pad1X = width-pad1W; // placing the pad on the right hand side of the window
textSize(60);
balls = new BallClass[3]; // array for generating 3 balls
balls[0] = new BallClass(random(20,width/5), random(20,height/5));
balls[1] = new BallClass(random(20,width/5), random(20,height/5));
balls[2] = new BallClass(random(20,width/5), random(20,height/5));
court = new Court();

flower = new Flower(random(20, width/5), random(20, height-10)); // generating a flower object

// assigning sound files for the game sounds
ballHit = new SoundFile(this, "Robot_blip.wav");
flowerHit = new SoundFile(this, "Robot_blip_2.wav");
flowerShow = new SoundFile(this, "A-Tone.wav");
ballMiss = new SoundFile(this, "Short_Beep.wav");
}

void draw() {
  
  court.makeCourt();
  
  if (mouseY <= height) {
    pad1Y = mouseY - pad1H / 2; // the cursor is set in the middle of the pad
  }
  
  for (int i = 0; i < balls.length; i++){ // generates the balls
    BallClass ball = balls[i];
        
    ball.makeBall();
    ball.wallCollision();
    ball.scoreBall();
  }
  if (streak == true) {
    flower.display();
    flower.wallCollision();
    flower.scoreFlower();
  }
}
  
void mousePressed() {
  if (mouseButton == LEFT) { // click left mouse button to start / pause the game 
   Start = !Start;
  }
  else if (mouseButton == RIGHT) { // right mouse button changes colors
    cul = color(random(255), random(255), random(255));
    background(cul * -1);
    }
}
