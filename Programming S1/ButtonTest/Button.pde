/*class Button {
  color t1, t2, b1, b2;
  int x, y, w, h;
  String val;
  Boolean over;

  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    over = false;
  }
  void display() {
    if (over) {
      fill(128);
      rect(x, y, w, h,5);
      fill(255,0,0);
      rect(x-3, y-3, w, h,5);
      fill(0);
      text(val, x+5, y+15);
    } else {
      fill(128);
      rect(x, y, w, h,5);
      fill(b1);
      rect(x-3, y-3, w, h,5);
      fill(0);
      text(val, x+5, y+15);
    }
  }
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}*/

class CalcButton{
  //Class variables
  boolean isNumber;
  boolean isOperator;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int boxSize = 45;
  int buttonW = 45;
  int buttonH = 45;
  boolean overBox = false;
  
  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  //Constructor for number buttons
  CalcButton asNumber(float tempNumButtonVal, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempNumButtonVal;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  
  //Constructor for operator buttons
  CalcButton asOperator(String tempOpButtonVal) {
    opButtonValue = tempOpButtonVal;
    isOperator = true;
    return this;
  }
  
  //Constructor for special buttons
  CalcButton asSpecial(String buttonValue) {
    isSpecial = true;
    spButtonValue = buttonValue;
    return this;
  }
  
  //Draw the button on the canvas
  void display() {
    //draw rounded edge button on canvas
    if(isNumber) {
      fill(177);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,buttonW,buttonH,5);
      fill(122,44,22);
      textSize(24);
      text(int(numButtonValue),xpos+15,ypos+30);
    } else if (isOperator) {
      fill(133);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,boxSize,boxSize,5);
      fill(0);
      textSize(24);
      text(spButtonValue,xpos+15,ypos+30);
    }
  }
  
  //Handle mouse actions
  void clickbutton() {
    overBox = mouseX > xpos && mouseX < xpos+boxSize && mouseY > ypos && mouseY < ypos+boxSize;
  }
  
}