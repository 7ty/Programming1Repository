void setup() {
  size(800,300);
}
void draw() {
  background(40);
  text("USD:" + mouseX,40,100);
  text("EURO:" + cashConverter(mouseX), 40,120);
  drawRef(50,49);
  noStroke();
  rect(50,50,mouseX-50,20);
  fill(0,mouseX/3,0);
  rect(50,50,mouseX-50,20);
  stopBar();
  fill(255);
}
float cashConverter(float val) {
  val = (val*.89);
  return val;
}
void drawRef(int xpos, int ypos) {
  fill(255);
  stroke(200);
  line(xpos-50, ypos, 800, ypos);
  for(int i = -0; i<750; i=i+50) {
    line(xpos+i, ypos-5,xpos+i,ypos+5);
    text(i, xpos+i-5, ypos-8);
  }
}
void stopBar() {
  fill(40);
  noStroke();
  rect(0,49,50,22);
  rect(751,49,750,22);
}