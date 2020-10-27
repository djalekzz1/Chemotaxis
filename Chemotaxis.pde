Bacteria[] joe;  
void setup()   
{     
  size(400, 400);
  background(255, 182, 193);
  strokeWeight(3);
  noStroke();  
  joe = new Bacteria[50];
  for (int i =0; i<joe.length; i++) {
    joe[i] = new Bacteria();
  }
}   
void draw()   
{      
  for (int i =0; i<joe.length; i++) {
    joe[i].move();
    joe[i].show();
  }
}  
class Bacteria    
{ 
  int myX, myY, rectColor;  
  Bacteria() {
    myX = 200;
    myY = 200;
    rectColor = color((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
  }
  void move() {
    myX = myX + (int)(Math.random() * 5)-2;
    myY = myY + (int)(Math.random() * 5)-2;
  }
  void show() {
    fill(rectColor);
    rect(myX, myY, 10, 10);
  }
} 
