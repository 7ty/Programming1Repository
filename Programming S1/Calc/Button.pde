
class CalcButton {
  //Class variables
  boolean isNumber;
  boolean isOperator;
  boolean isSpecial;
  int numButtonValue;
  char opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int boxSize = 33;
  int buttonW = 33;
  int buttonH = 33;
  boolean overBox = false;
  
  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  //Constructor for number buttons
  CalcButton asNumber(int numButtonVal, int tempW, int tempH) {
    isNumber = true;
    this.numButtonValue = numButtonVal;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  
  //Constructor for operator buttons
  CalcButton asOperator(char tempOpButtonVal) {
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
      fill(255,165,0);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,boxSize,boxSize,5);
      fill(122,44,22);
      textSize(24);
      text(opButtonValue,xpos+15,ypos+30);
    } else if (isSpecial) {
      fill(255,165,0);
      stroke(0);
      strokeWeight(2);
      rect(xpos,ypos,boxSize,boxSize,5);
      fill(122,44,22);
      textSize(24);
      text(opButtonValue,xpos+15,ypos+30);
    }
  }
  
  //Handle mouse actions
  void clickbutton() {
    overBox = mouseX > xpos && mouseX < xpos+boxSize && mouseY > ypos && mouseY < ypos+boxSize;
  }
  
}