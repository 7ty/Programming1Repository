class Cars {
  //member variables
  color c;
  float x,y,speed;

  //constructor
  Cars() {
    c = color(random(255),random(255),random(255));
    x = width/2;
    y = random(height);
    speed = random(3);
  }

  //member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, 20, 10);
    fill(126);
    rect(x-6,y-5,7,4);
    rect(x+7,y-5,7,4);
    rect(x-6,y+5,7,4);
    rect(x+7,y+5,7,4);
  }

  void drive() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
}