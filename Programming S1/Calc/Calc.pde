//instantiate each of the classification of buttons
CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[7];
CalcButton[] spButtons = new CalcButton[1];


String displayValue = "0";
String valueToCompute = ""; //string value left of operator
String valueToCompute2 = ""; //string value right of operator
float valueToComputeI = 0; //float value left of operator
float valueToComputeI2 = 0; //float value left of operator
float result = 0;
char opValue;
boolean firstNum;

void setup() {
  size(300, 400);
  background(128);
  noFill();

  //populate number buttons
  numButtons[0] = new CalcButton(82, 333).asNumber(0, 33, 33);
  numButtons[1] = new CalcButton(82, 282).asNumber(1, 33, 33);
  numButtons[2] = new CalcButton(133, 282).asNumber(2, 33, 33);
  numButtons[3] = new CalcButton(182, 282).asNumber(3, 33, 33);
  numButtons[4] = new CalcButton(82, 233).asNumber(4, 33, 33);
  numButtons[5] = new CalcButton(133, 233).asNumber(5, 33, 33);
  numButtons[6] = new CalcButton(182, 233).asNumber(6, 33, 33);
  numButtons[7] = new CalcButton(82, 182).asNumber(7, 33, 33);
  numButtons[8] = new CalcButton(133, 182).asNumber(8, 33, 33);
  numButtons[9] = new CalcButton(182, 182).asNumber(9, 33, 33);

  //populate operators
  opButtons[0] = new CalcButton(233, 282).asOperator('+');
  opButtons[1] = new CalcButton(233, 233).asOperator('-');
  opButtons[2] = new CalcButton(233, 182).asOperator('*');
  opButtons[3] = new CalcButton(233, 133).asOperator('/');
  opButtons[4] = new CalcButton(233, 333).asOperator('=');
  opButtons[5] = new CalcButton(33, 133).asOperator('C');
  opButtons[6] = new CalcButton(182, 333).asOperator('n');
  
  //populate special
  spButtons[0] = new CalcButton(133,333).asSpecial(".");

  //set the initial value of first num to true
  firstNum = true;
}

void draw() {
  //draw number buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
  }
  for (int i=0; i<spButtons.length; i++) {
    CalcButton ispButton = spButtons[i];
    ispButton.display();
  }
  updateDisplay();
}

void preformCalculation() {
  //set string values to integers
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  // preform calculation based on the appropriate operator
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  }
  // let = work multiple times
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].clickbutton();
    if (numButtons[i].overBox) {
      if (firstNum) {
        valueToCompute += numButtons[i].numButtonValue;
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += numButtons[i].numButtonValue;
        displayValue = valueToCompute2;
      }
    } else if (opValue == 'n') {
      if (firstNum) {
        valueToComputeI = valueToComputeI*-1;
        displayValue = str(valueToComputeI);
      } else {
        valueToComputeI2 = valueToComputeI2*-1;
        displayValue = str(valueToComputeI);
      }
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].clickbutton();
    if (opButtons[i].overBox) {
      if (opButtons[i].opButtonValue == '+') {
        if (result != 0) {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      } else if (opButtons[i].opButtonValue == '-') {
        if (result != 0) {
          opValue = '-';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
      } 
      if (opButtons[i].opButtonValue == '*') {
        if (result != 0) {
          opValue = '*';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "*";
        } else {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
        }
      } 
      if (opButtons[i].opButtonValue == '/') {
        if (result != 0) {
          opValue = '/';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "/";
        } else {
          opValue = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButtons[i].opButtonValue == '=') {
        // Perform calculation
        firstNum = true;
        preformCalculation();
      }
    }
  }
  for (int i=0; i<spButtons.length; i++) {
    CalcButton iSpButton = spButtons[i];
    iSpButton.clickbutton();
    if (iSpButton.overBox) {
      if (iSpButton.spButtonValue == ".") {
        //concantenate the values clicked on
        if (iSpButton.overBox && firstNum == true) {
          valueToCompute += iSpButton.spButtonValue;
          displayValue = valueToCompute;
        } else if (iSpButton.overBox && firstNum == false) {
          valueToCompute2 += iSpButton.spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    } else if (opButtons[i].opButtonValue == 'C') {
      displayValue = "0";
      opValue = 'C';
      valueToCompute = "";
      valueToCompute2 = "";
      valueToComputeI = 0;
      valueToComputeI2 = 0;
      result = 0;
      firstNum = true;
    } else if (opButtons[i].opButtonValue == 'n') {
      opValue = 'n';
      preformCalculation();
    }
  } 
}

void updateDisplay() {
  fill(200, 200, 150);
  rect(33, 33, 233, 66, 5);
  fill(0);
  textSize(25);
  text(displayValue, 39, 93);
}