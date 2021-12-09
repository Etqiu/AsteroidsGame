class Star{
  private float positionX, positionY;
  private float mySize;
  private int myColor;
  private float time;
  private float time2;
  public Star(){
    positionX = (float)(Math.random()*1001);
    positionY = (float)(Math.random()*1001);
    mySize = 2;
    myColor = (int)(Math.random()*255);
    time = 0;
    time2 =0;
  }
  
  public void blink(){
    fill(0);
  }
  public void show(){
    stroke(0);
    fill(myColor);
    ellipse(positionX,positionY, 4, 4);
  }
  public void hypostasis(){
    if(millis()-time>2000){
    positionX = (float)(Math.random()*1000);
    positionY = (float)(Math.random()*1000);
    time = millis();
    }
  }
   public void hypostasis2(){
      if(millis()-time2>500){
    positionX = (float)(Math.random()*1000);
    positionY = (float)(Math.random()*1000);
    time2 = millis();
      }
  }
  public float getX(){
    return positionX;
  }
  public float getY(){
      return positionY;
    }
  public void setX(float n){
    positionX = n;
    positionY = n;
  }
}
