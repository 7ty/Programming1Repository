//instantiate each of the classification of buttons
CalcButton[] numButtons = new CalcButton[2];
CalcButton[] opButtons = new CalcButton[2];

String displayValue = "0";
String valueToCompute = ""; //string value left of operator
String valueToCompute2 = ""; //string value right of operator
float valueToComputeI = 0; //float value left of operator
float valueToComputeI2 = 0; //float value left of operator
float result = 0;
char opValue = ' ';
boolean firstNum;

 void setup() {
  size(300,400);
  background(128);
  noFill();
  //strokeWeight(3);
  //stroke(0);
  
  //populate number buttons
  numButtons[0] = new CalcButton(82,333).asNumber(0,33,33);
  numButtons[1] = new CalcButton(82,282).asNumber(1,33,33);
  
  //populate operators
  opButtons[0] = new CalcButton(233,233).asOperator("+");
  opButtons[1] = new CalcButton(233,282).asOperator("-");
  
  //set the initial value of first num to true
  firstNum = true;
  
  //set the initial value of first num to true
  firstNum = true;
}

void draw() {
  //draw number buttons
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.display();
  }
  updateDisplay(); 
}

void preformCalculation() {
  //set string values to integers
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.clickbutton();
    if(inumButton.overBox) {
      if(firstNum) {
        println(i + " " + inumButton.numButtonValue);
        valueToCompute += int(inumButton.numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
}

void updateDisplay() {
  fill(200,200,150);
  rect(33,33,233,66,5);
  fill(0);
  textSize(25);
  text(displayValue,39,93);
}