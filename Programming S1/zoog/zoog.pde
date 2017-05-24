void setup() {
  background(0,255,0);
  size(600,600);
  frameRate(10);
}
void draw() {
  //background(255);
  zoog(int(random(width)),int(random(height)));
}

void zoog(int x,int y) {
  // set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // zoog's body
  stroke(0);
  fill(0,160,255);
  rect(x,y,20,100);
  
  //zoogs head
  stroke(0);
  fill(255);
  ellipse(x,y-30,60,60);
  
  //zoogs eyes
  fill(0);
  ellipse(x-20,y-30,16,32);
  ellipse(x+20,y-30,16,32);
  
  //zoogs legs
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
}