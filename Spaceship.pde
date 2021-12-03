class Spaceship extends Floater {
  private float time, time2;
  
  public Spaceship() {
    myColor = (255);
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed =0;
    myYspeed =0;
    myPointDirection =0;
    time = 0;
    time2 = 0;
  }
  public void hyperspace() {

    if (millis()-time>2000) {

      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myXspeed =0;
      myYspeed =0;
      myPointDirection =(int)(Math.random()*360);
      time = millis();
    }
  }
  public void maxspeed() {
    if (myXspeed >=5) {
      myXspeed=5;
    }
    if(myYspeed>=5){
      myYspeed=5;
    }
  
  }
  public void deaccerlate(){
    
    myXspeed-=0.0005;
    myYspeed-=0.0005;
    
    if(millis()-time2>1000){
      myXspeed-=0.005;
      myYspeed-=0.005;
      
    }
        if(millis()-time2>2000){
      myXspeed-=0.05;
      myYspeed-=0.05;
      time = millis();
    }
      if (myXspeed<0 || myYspeed<0) {
      myXspeed =0;
      myYspeed =0;
    }
  }
}
