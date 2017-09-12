void setup () {
size (400,400);
noLoop();

}
int total;

void draw () {
  
  for (int j = 0; j < 7; j++) {
  for (int i = 0; i < 8; i++) {
  Dice a = new Dice();
  a.roll();
  a.show (i*50,j*50,50);
  }
  }
  
  fill(0,0,0);
  textAlign(CENTER);
  text("The dice add up to "+ total,200,375);
}

class Dice  {
  int number;
  void roll () {
    number = (int)(Math.random()*6+1);
  }
  
  void show (int x1, int y1, int size) {
    fill (255);
    rect (0+x1,0+y1,1+size,1+size);
    if (number == 1) {
      fill (0);
      ellipse (x1+25,y1+25,10,10);
      total += 1;
    }
    if (number == 2) {
      fill (0);
      ellipse (x1+15,y1+35,10,10);
      ellipse (x1+35,y1+15,10,10);  
      total +=2;
    }
    if (number == 3) {
      fill (0);
      ellipse (x1+13,y1+37,10,10);
      ellipse (x1+37,y1+13,10,10);
      ellipse (x1+25,y1+25,10,10);
      total +=3;
    }
    if (number == 4) {
      fill (0);
      ellipse (x1+13,y1+37,10,10);
      ellipse (x1+37,y1+13,10,10);
      ellipse (x1+13,y1+13,10,10);
      ellipse (x1+37,y1+37,10,10);
      total +=4;
    }
    if (number == 5) {
      fill (0);
      ellipse (x1+13,y1+37,10,10);
      ellipse (x1+37,y1+13,10,10);
      ellipse (x1+13,y1+13,10,10);
      ellipse (x1+37,y1+37,10,10);
      ellipse (x1+25,y1+25,10,10);
      total +=5;
    }
    if (number == 6) {
      fill (0);
      ellipse (x1+13,y1+37,10,10);
      ellipse (x1+37,y1+13,10,10);
      ellipse (x1+13,y1+13,10,10);
      ellipse (x1+37,y1+37,10,10);
      ellipse (x1+13,y1+25,10,10);
      ellipse (x1+37,y1+25,10,10);
      total +=6;
    }
    
  }
}