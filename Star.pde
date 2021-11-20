class Star{
  float positionX, positionY;
  float mySize;
  int myColor;
   float time;
  Star(){
    positionX = (float)(Math.random()*500);
    positionY = (float)(Math.random()*500);
    mySize = 2;
    myColor = (int)(Math.random()*255);
    time = 0;
  }
  
  void blink(){
    fill(0);
  }
  void show(){
    fill(myColor);
    ellipse(positionX,positionY, 2, 2);
  }
  void hypostasis(){
    if(millis()-time>2000){
    positionX = (float)(Math.random()*500);
    positionY = (float)(Math.random()*500);
    time = millis();
    }
  }
}
