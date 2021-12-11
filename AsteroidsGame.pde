Star[]blinky = new Star[200];
Spaceship []spacey = new Spaceship[6];
Thruster [] thrusty = new Thruster[6];
ArrayList <Asteroid> rocky = new ArrayList <Asteroid>();
boolean wPress, aPress, dPress;
float center, center2;
float time, time2;
int health;
int lengths = 20;
float opacity = 0;
boolean death = false;

public void setup()
{
  
  wPress = false;
  aPress = false;
  dPress = false;
  time =0;
  health = 6;
  noStroke();
  size(1000, 1000);
  for (int i = 0; i<thrusty.length; i++) {
    thrusty[i] = new Thruster();
  }
  for (int i = 0; i<25; i++) {
    rocky.add(new Asteroid());
  }
  for (int i = 0; i<blinky.length; i++) {
    blinky[i]=new Star();
  }
  for (int i = 0; i<spacey.length; i++) {
    spacey[i] = new Spaceship();
  }
  spacey[0].setCenterX(500);
  spacey[0].setCenterY(500);
  spacey[1].setCenterX(500);
  spacey[1].setCenterY(450);
  spacey[2].setCenterX(500);
  spacey[2].setCenterY(550);
  spacey[3].setCenterX(450);
  spacey[3].setCenterY(475);
  spacey[4].setCenterX(450);
  spacey[4].setCenterY(525);
  spacey[5].setCenterX(400);
  spacey[5].setCenterY(500);
  thrusty[0].setCenterX(500);
  thrusty[0].setCenterY(500);
  thrusty[1].setCenterX(500);
  thrusty[1].setCenterY(450);
  thrusty[2].setCenterX(500);
  thrusty[2].setCenterY(550);
  thrusty[3].setCenterX(450);
  thrusty[3].setCenterY(475);
  thrusty[4].setCenterX(450);
  thrusty[4].setCenterY(525);
  thrusty[5].setCenterX(400);
  thrusty[5].setCenterY(500);
}

public void draw()
{
  center = (float)(Math.random()*2000)-1000;
  center2 = (float)(Math.random()*2000)-1000;
  background(0);

  for (int i = 0; i<blinky.length; i++) {
    blinky[i].show();
  }
  for (int i = 0; i<spacey.length; i++) 
    if(spacey[i] != null) {
      spacey[i].move();
      thrusty[i].move();
      spacey[i].show();
      spacey[i].maxspeed();
      thrusty[i].maxspeed();
    }
  for (int i = 0; i<rocky.size(); i++) {
    rocky.get(i).show();
    rocky.get(i).move();
  }
  if (keyPressed) {
    for (int i = 0; i<spacey.length; i++) {
    if(spacey[i] != null) {
      if (aPress) {
        spacey[i].turn(-5);
        thrusty[i].turn(-5);
      }
      if (wPress) {
       
       thrusty[i].setColorX((int)(Math.random()*30));
       thrusty[i].setColorY(((int)(Math.random()*100)+100));
       thrusty[i].setColorZ(((int)(Math.random()*100)+100));
       spacey[i].accelerate(.05);
       thrusty[i].accelerate(.05);
       thrusty[i].show();
  
      }
      
      if (dPress) {
        spacey[i].turn(5);
        thrusty[i].turn(5);
      }


      if (key == 'h'|| key == 'H' ) 
      {
        if(spacey[0]!=null&&spacey[1]!=null&&spacey[2]!=null&&spacey[3]!=null&&spacey[4]!=null&&spacey[5]!=null){
           if (millis()-time>2000) {
          spacey[0].setCenterX(center);
          spacey[0].setCenterY(center2);
          spacey[1].setCenterX(center);
          spacey[1].setCenterY(center2-50);
          spacey[2].setCenterX(center);
          spacey[2].setCenterY(center2+50);
          spacey[3].setCenterX(center-50);
          spacey[3].setCenterY(center2-25);
          spacey[4].setCenterX(center-50);
          spacey[4].setCenterY(center2+25);
          spacey[5].setCenterX(center-100);
          spacey[5].setCenterY(center2);
          spacey[0].hyperspace();
          spacey[1].hyperspace();
          spacey[2].hyperspace();
          spacey[3].hyperspace();
          spacey[4].hyperspace();
          spacey[5].hyperspace();
          thrusty[0].setCenterX(center);
          thrusty[0].setCenterY(center2);
          thrusty[1].setCenterX(center);
          thrusty[1].setCenterY(center2-50);
          thrusty[2].setCenterX(center);
          thrusty[2].setCenterY(center2+50);
          thrusty[3].setCenterX(center-50);
          thrusty[3].setCenterY(center2-25);
          thrusty[4].setCenterX(center-50);
          thrusty[4].setCenterY(center2+25);
          thrusty[5].setCenterX(center-100);
          thrusty[5].setCenterY(center2);
          thrusty[0].hyperspace();
          thrusty[1].hyperspace();
          thrusty[2].hyperspace();
          thrusty[3].hyperspace();
          thrusty[4].hyperspace();
          thrusty[5].hyperspace();
          time = millis();
           }
        }
        else{
          fill(255);
        
          text("not enough fuel!!!!",100,100,500);
          death = true;
          
          
          
        }
        }
      }
    }
  }
  
  for (int i = 0; i<spacey.length; i++) 
    if(spacey[i] != null) {
      for (int j = 0; j<blinky.length; j++) {
        for (int k = 0; k<rocky.size(); k++) {
          if (spacey[i].getCenterX()>width-1) {
            blinky[j].hypostasis2();
            rocky.get(k).hyperspace2();
          } else if (spacey[i].getCenterX()<1)
          {    
            blinky[j].hypostasis2();
            rocky.get(k).hyperspace2();
          }    
          if (spacey[i].getCenterY() >height-1)
          {    
  
            blinky[j].hypostasis2();
            rocky.get(k).hyperspace2();
          } else if (spacey[i].getCenterY()< 1)
          {  
            blinky[j].hypostasis2();
            rocky.get(k).hyperspace2();
            
          }
        }
      }
    }




  if (keyPressed) {
    if (key == 'h'|| key == 'H') 
    if(death == false){
      for (int k = 0; k<blinky.length; k++) {
        blinky[k].hypostasis();
      }
    }
  }
  if (keyPressed) {
    if (key == 'h'|| key == 'H') 
    if(death == false){
      for (int k = 0; k<rocky.size(); k++) {
        rocky.get(k).hyperspace();
      }
    }
  }
  //if (keyPressed ==false) {
  //for (int i = 0; i<spacey.length; i++) {
  // spacey[i].deaccerlate();
  // }
  // }
  for (int i = 0; i<rocky.size(); i++) {
    for (int k = 0; k<spacey.length; k++)
    if(spacey[k] != null) { 
      
      if (dist((float)rocky.get(i).myCenterX, (float)rocky.get(i).myCenterY, (float)spacey[k].myCenterX, (float)spacey[k].myCenterY) <=15) {
        rocky.set(i, new Asteroid());
        rocky.get(i).setCenterX(Math.random()*1000);
        rocky.get(i).setCenterX(Math.random()*-500);
        spacey[k] = null;
        health--;
        
      }
    }
  }
 if(health ==0){
  noLoop();
      background(0);
       fill(255);
         text("GAME OVER", 445, 500, 500);
      text("Time of Flight: " +millis()/1000+ " seconds", 410,50,500);
    }
}

public void keyPressed() {
  if (key == 'w' || key == 'W')
    wPress = true;
  if (key == 'a' || key == 'A')
    aPress = true;
  if (key == 'd' || key == 'D')
    dPress = true;
}

public void keyReleased() {
  if (key == 'w' || key == 'W')
    wPress = false;
 
  if (key == 'a' || key == 'A')
    aPress = false;
  if (key == 'd' || key == 'D')
    dPress = false;
}
