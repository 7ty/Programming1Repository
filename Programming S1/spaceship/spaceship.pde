void setup() {
  size(100,100);
  background(0);
}

void draw() {
  stroke(255);
  fill(130);
  triangle(50,2,40,25,60,25);
  fill(255);
  rect(40,25,20,50);
  fill(255,0,0);
  quad(40,25,40,77,25,90,25,45);
  quad(60,25,60,77,75,90,75,45);

}