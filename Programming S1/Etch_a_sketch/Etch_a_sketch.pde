int x,y;

void setup() {
  size(400,400);
  frameRate(10);
  //set start coords
  x=0;
  y=0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

//algorithm for 1st name
void drawName() {
  moveRight(10);
  moveLeft(5);
  moveDown(12);
  moveRight(3);
  
  moveUp(6);
  moveDown(6);
  moveRight(4);
  moveUp(6);
  moveDown(12);
  moveLeft(4);
  moveRight(4);
  moveUp(6);
  moveRight(3);
  
  moveUp(12);
  moveDown(12);
  moveRight(3);
  
  moveRight(5);
  moveLeft(5);
  moveUp(6);
  moveRight(5);
  moveDown(3);
  moveLeft(5);
  moveDown(3);
  moveRight(5);
  moveRight(3);
  
  moveUp(6);
  moveRight(4);
  
}

//method to draw right line
void moveRight(int rep) {
  for(int i=0; i<rep*10;i++) {
    point(x+i,y);
  }
  x=x+(10*rep);
}

//method for moving down
void moveDown(int rep) {
  for(int i=0; i<rep*10;i++) {
    point(x,y+i);
  }
  y=y+(10*rep);
}

//move up
void moveUp(int rep) {
  for(int i=0; i<rep*10;i++) {
    point(x,y-i);
  }
  y=y-(10*rep);
}

//move right
void moveLeft(int rep) {
  for(int i=0; i<rep*10;i++) {
    point(x-i,y);
  }
  x=x-(10*rep);
}