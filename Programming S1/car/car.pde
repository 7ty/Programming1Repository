//creating car object
Cars c1;
Cars c2;
Cars[] car = new Cars[100];
void setup() {
  size(200,200);
  c1 = new Cars();
  c2 = new Cars();
  car[0] = new Cars();
  for(int i=0; i<car.length;i++) {
    car[i] = new Cars();
  }
}

void draw() {
  background(0);
  c1.display();
  c1.drive();
  c2.display();
  c2.drive();
for(int i=0; i<car.length; i++) {
  car[i].display();
  car[i].drive();
}
}