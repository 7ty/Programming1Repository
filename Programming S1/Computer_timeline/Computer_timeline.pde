color btn1 = #B26E0C;//dark brown
color btn2 = #FFC269;//light brown
color bg1 = #5BBCFF;//light blue
color bg2 = #006AB2;//medium blue
color txt1 = (0);//black
color txt2 =  (255);//white
void setup() {
  size(900,400);
  background(bg1);
  frameRate(60);
}

void draw() {
  background(bg1);
  histEvent(50,320,120,30,"Sample Text","Test description",false);
  histEvent(250,320,120,30,"Sample Text","Test description",false);
  histEvent(450,320,120,30,"Sample Text","Test description",false);
  histEvent(650,320,120,30,"Sample Text","Test description",false);
  histEvent(100,240,120,30,"Sample Text","Test description",true);
  histEvent(300,240,120,30,"Sample Text","Test description",true);
  histEvent(500,240,120,30,"Sample Text","Test description",true);
  histEvent(700,240,120,30,"Sample Text","Test description",true);
  drawRef(50,300,850,300);
}

void histEvent( int x, int y, int w, int h, String tText, String dText, boolean top) {
  strokeWeight(1);
  if (top) {
    line(x+20,y+h,x+40,y+h+30);
  } else {
    line(x+20,y,x+40,y-20);
  }
  
  fill(128,128,128,128);
  noStroke();
  rect(x+3,y+3,w,h,5); //shadow
  fill(btn1);
  stroke(0);
  rect(x,y,w,h,5); //button
  fill(txt2);
  text(tText,x+5,y+20);
  if(mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h) {
    if(top) {
      text(dText,x,y-30);
    } else {
      text(dText,x,y+60);
    }
  }
}
void drawRef(int x, int y, int w, int h) {
  strokeWeight(4);
  line(x,y,w,h);
}