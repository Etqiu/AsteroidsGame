class Spaceship extends Floater {
  private float time, time2;
 
  public Spaceship() {
    myColor = (0);
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] =-2;
    yCorners[3] = 0;
    myCenterX = 500;
    myCenterY = 500;
    myXspeed =0;
    myYspeed =0;
    myPointDirection =0;
    time = 0;
    time2 = 0;
  }
  public void hyperspace() {

    if (millis()-time>2000) {
      myXspeed =0;
      myYspeed =0;
 
      time = millis();
    }
  }
  public void maxspeed() {
    if (myXspeed >=3) {
      myXspeed=3;
    }
    if(myYspeed>=3){
      myYspeed=3;
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
   public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void setCenterX(double n){
    myCenterX = n;
  }
   public void setCenterY(double n){
     myCenterY = n;
}
public void thruster(){
 
 
}
public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    

      if(myCenterX >width)
    {    
      myCenterX -= width;    
    }    
    else if (myCenterX<0)
    {    
      myCenterX += width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY -= height;    
    }
   
    else if (myCenterY < 0)
    {    
      myCenterY += height;    
    }  
  }  
   public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(255);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}
