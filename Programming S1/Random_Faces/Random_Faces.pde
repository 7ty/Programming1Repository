void setup() {
  size(400,400);
  background(255);
  frameRate(1);
}
void draw(){
  background(255);
  strokeWeight(5);
  fill(240,225,62);
  ellipse(width/2,height/2,random(width*.7,width*.95),random(width*.88,width*.99));
  ellipse(150,140,5,5);
  ellipse(250,140,5,5);
  fill(255);
  ellipse(150,140,random(40,78),random(35,74));
  ellipse(250,140,random(40,78),random(35,74));
  ellipse(150,140,5,5);
  ellipse(250,140,5,5);
  curve(140,340,random(140,270),random(300,345),random(176,270),random(340,345),260,340);
}