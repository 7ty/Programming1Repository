void setup() {
  size(500,500);
  background(255);
}

void draw() {
  button(20,20,100,50, "Sample Text");
  button(20,80,100,50, "Link");
  button(20,140,100,50, "Credits");
  
}

void button(int x, int y, int w, int h, String bt) {
  //shadow
  noStroke();
  fill(128);
  rect(x,y,w,h,5);
  
  //button
  stroke(0);
  fill(0,130,255);
  rect(x-3,y-3,w,h,5);
  
  //text
  fill(0);
  text(bt,x+10,y+25);
}