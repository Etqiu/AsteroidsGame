class Asteroid extends Floater{
   private float time,time2;
  public Asteroid(){
    myColor = (0);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = (int)(Math.random()*-6)-7;
    yCorners[0] = (int)(Math.random()*-6)-7;
    xCorners[1] = (int)(Math.random()*-6)-7;
    yCorners[1] = (int)(Math.random()*-6)-7;
    xCorners[2] = (int)(Math.random()*6)+7;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*6)+7;
    yCorners[3] = (int)(Math.random()*6)+7;
    xCorners[4] = (int)(Math.random()*-6)-7;
    yCorners[4] = (int)(Math.random()*6)+7;
    xCorners[5] = (int)(Math.random()*-6)-7;
    yCorners[5] = 0;
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*1000);
    myXspeed =(Math.random()*3)-1.5;
    myYspeed =(Math.random()*3)-1.5;
    myPointDirection =(int)(Math.random()*360);
    time = 0;
    time2 =0;
  }
  public void spin(){
     myPointDirection +=(float)(Math.random()*2);
  }
  public void setXSpeed(double n){
    myXspeed = n;
  }
  public void setYSpeed(double n){
    myYspeed = n;
  }
  public void setCenterX(double n){
    myCenterX = n;
  }
  public void setCenterY(double n){
    myCenterY = n;
  }
  public void hyperspace(){
    if (millis()-time>2000) {
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*1000);
    myPointDirection =(int)(Math.random()*360);
    time = millis();
    }
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
   myPointDirection+=(Math.random()*1.4)+.1;    
    if(myCenterX >width){myCenterX = 0;}    
    else if (myCenterX<0){myCenterX = width;}    
    if(myCenterY >height){myCenterY = 0;} 
    else if (myCenterY < 0){myCenterY = height;}   
    //REQUIRMENT??? 
  }   
    
  
   public void hyperspace2(){
    if (millis()-time2>500) {
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*1000);
    myPointDirection =(int)(Math.random()*360);
    time2 = millis();
    }
  }
    public void show ()  //Draws the floater at the current position  
  {             
    fill(130, 125, 118);   
    stroke(myColor);    
    
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
