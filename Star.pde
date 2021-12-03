class Star{
  private float positionX, positionY;
  private float mySize;
  private int myColor;
  private float time;
  public Star(){
    positionX = (float)(Math.random()*1001);
    positionY = (float)(Math.random()*1001);
    mySize = 2;
    myColor = (int)(Math.random()*255);
    time = 0;
  }
  
  public void blink(){
    fill(0);
  }
  public void show(){
    fill(myColor);
    ellipse(positionX,positionY, 2, 2);
  }
  public void hypostasis(){
    if(millis()-time>2000){
    positionX = (float)(Math.random()*500);
    positionY = (float)(Math.random()*500);
    time = millis();
    }
  }
}
