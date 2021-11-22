class Spaceship extends Floater{
  public boolean hyperspace;
  private float time;
  public Spaceship(){
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
  myPointDirection =90;
  hyperspace = false;
  time = 0;
  
}
 public void hyperspace(){
   
   if(millis()-time>2000){
     
   myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed =0;
  myYspeed =0;
  myPointDirection =(int)(Math.random()*360);
  time = millis();

}
}
}
