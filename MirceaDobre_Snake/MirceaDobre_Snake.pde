int num = 50; // number of flower objects
Flower[] snakeFlower = new Flower[num]; // making an instance of the Flower class 
int[] x = new int[num]; // coordinates
int[] y = new int[num]; // coordinates
int indexPosition = 0;

void setup() {
  size(1600, 1200);
  noCursor(); // hides the mouse cursor
}

void draw() {
  background(0);
  x[indexPosition] = mouseX; // get x and y coordinates from the mouse position (follow the mouse)
  y[indexPosition] = mouseY; //
  indexPosition = (indexPosition + 1) % num; // value between 0 and num in a loop
  for (int i = 0; i < num; i++) { // makes a num number of flowers
    int pos = (indexPosition + i) % num;
    snakeFlower[pos] = new Flower(x[pos],y[pos]);
    snakeFlower[pos].display();
  }
}
