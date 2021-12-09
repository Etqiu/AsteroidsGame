class Thruster extends Spaceship {
  private int myColorX;
  private int myColorY;
  private int myColorZ;
  public Thruster() {
    myColorX = 0;
    myColorY = 0;
    myColorZ =0;
    corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -5;
    yCorners[0] = 5;
    xCorners[1] = -10;
    yCorners[1] = 3;
    xCorners[2] = -15;
    yCorners[2] = 2;
    xCorners[3] =-14;
    yCorners[3] = 1;
    xCorners[4] =-15;
    yCorners[4] = 0;
    xCorners[5] =-14;
    yCorners[5] = -1;
    xCorners[6] =-15;
    yCorners[6] = -2;
    xCorners[7] =-10;
    yCorners[7] = -3;
    xCorners[8] =-5;
    yCorners[8] = -5;
    xCorners[9] =-2;
    yCorners[9] = 0;
    myCenterX = 500;
    myCenterY = 500;
    myXspeed =0;
    myYspeed =0;
    myPointDirection =0;
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColorX, myColorY, myColorZ);   
    noStroke();    

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
  public void setColors() {
    myColorX = 0;
    myColorY = 0;
    myColorZ = 0;
  }
  public void setColorX(int n) {
    myColorX = n;
  }
  public void setColorY(int n) {
    myColorY = n;
  }
  public void setColorZ(int n) {
    myColorZ = n;
  }
}
