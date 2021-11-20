Star[]bob = new Star[100];
Spaceship bobs = new Spaceship();
public void setup() 
{

  noStroke();

  size(500, 500);
  for (int i = 0; i<bob.length; i++) {
    bob[i]=new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<bob.length; i++) {
    bob[i].show();
  }  
  bobs.move();
  bobs.show();
  if (keyPressed) {
    if (key == 'a' || key == 'A') {

      bobs.turn(-5);
    }
      if (key == ' ' || key == ' ') {
        bobs.accelerate(.05);
    }
    if (key == 'd' || key == 'D') {

      bobs.turn(5);
        if(keyPressed){
          if(key == ' ' || key == ' '){
            bobs.accelerate(.05);
          }
    }
    }
      if (key == 's' || key == 's') {
        bobs.accelerate(-.05);
      
  }
  if(key == 'h'){
    bobs.hyperspace();
    for (int i = 0; i<bob.length; i++) {
      bob[i].hypostasis();
    }
  
  }
}

}

