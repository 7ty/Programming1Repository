void setup() {
  size(500,500);
  background(10,0,40);
  frameRate(1);
}
void draw() {
  fill(random(255),random(255),random(255));
  ellipse(random(width+1),random(height+1),random(10,50),random(10,50));
  fill(random(30,50),random(30,210),random(200,255));
  rect(random(width+1),random(height+1),random(10,50),random(10,50));
}