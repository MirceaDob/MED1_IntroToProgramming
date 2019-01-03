class BallClass {

float balX = random(20,width);
float balY = random(20,height);
float balH = 50; // ball size
float spdX = random(3,5); // random numbers to increase ball movement speed
float spdY = random(3,5); //

BallClass(float balX, float balY) { // constructor
  this.balX = balX;
  this.balY = balY;
}

void makeBall() { // draw a ball
  fill(cul);
  ellipse(balX, balY, balH, balH);
}

void wallCollision() { // collision between the ball and the walls
 if (Start) {
    balX = balX + spdX;
    balY = balY + spdY;
  
  if ((balY <= balH / 2) || (balY >= height - balH / 2)) { // ball bounces off the top and bottom walls
    spdY = -spdY;
    balY = balY + spdY;
  }
  if (balX <= balH / 2) { // ball bounces off the left wall
    spdX = -spdX;
    balX = balX + spdX;
  }
}
}

void scoreBall() {
  if ((balX > width - balH / 2 - pad1W) && (balY > mouseY - pad1H / 2) && (balY < mouseY + pad1H / 2)) { // if the ball hits the pad it bounces off and the score increases by 1
      ballHit.play();
      spdX = spdX * 1.1;
      spdX = -spdX;
      balX = balX + spdX;
      scor += 1;
      ft += 1;
      if (ft == 10) {
        flowerShow.play();
        streak = true;
        ft = 0;
    }
  }
  
  if (balX > width) { // if the ball hits the right wall instead of the pad the score decreases and the ball respawns
    ballMiss.play();
    balX = random(width);
    balY = random(height); 
    spdX = random(3, 5);
    spdY = random(3, 5);
    scor = scor-1;
    ft = 0;
  }
}
}
