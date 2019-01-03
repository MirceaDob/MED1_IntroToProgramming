class Court {

Court() { // constructor
}  

void makeCourt() {  
  background(cul * -1);
  fill(cul);
  // putting text on the screen - playing instructions and score
  textSize(20);
  text("Left click to Play/Pause", width - 1300, height - 500);
  text("Right click to change colors according to your preferences", width - 1300, height - 400);
  text("Hit the balls 10 times in a row to get a flower", width - 1300, height - 300);
  text("Each time you hit the flower you get 10 points", width - 1300, height - 200);
  text("Please keep the mouse cursor inside the game window", width - 1300, height - 100);
  textSize(50);
  text("Score: ", width - 500, 100);
  text(scor, width - 200, 100);
  textSize(25);
  text("Streak: ", width - 500, 200);
  text(ft, width - 200, 200);
  fill(#2DC940);
  // making borders for the top, bottom and lefthand side walls
  rect(0, 0, width, edge);
  rect(0, height - edge, width, edge); 
  rect(0, 0, edge, height);
  fill(#FA340D);
  // making border for the right hand side wall
  rect(width - edge, 0, edge, height);
  fill(cul);
  rect(pad1X, pad1Y, pad1W, pad1H, 10);
}
}
