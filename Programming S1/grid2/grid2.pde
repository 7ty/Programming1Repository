for(int i=0; i<100; i+=10) {
  line(0,i,width,i);
}

int i=0;
while(i<width) {
  line(i,0,i,height);
  i+=10;
}