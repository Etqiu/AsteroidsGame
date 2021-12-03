Star[]bob = new Star[200];
Spaceship []bobs = new Spaceship[20];
public void setup() 
{

  noStroke();

  size(1000, 1000);
  for (int i = 0; i<bob.length; i++) {
    bob[i]=new Star();
  }
  for (int i = 0; i<bobs.length; i++) {
    bobs[i] = new Spaceship();
  }
}
public void draw() 
{

  background(0);
  for (int i = 0; i<bob.length; i++) {
    bob[i].show();
  } 
  for (int i = 0; i<bobs.length; i++) {
    bobs[i].move();
    bobs[i].show();
    bobs[i].maxspeed();
  }
  if (keyPressed) {
    for (int i = 0; i<bobs.length; i++) {
      if (key == 'a' || key == 'A') {
        bobs[i].turn(-5);
      }
      if (key == ' ' || key == ' ') {
        bobs[i].accelerate(.05);
      }
      if (key == 'd' || key == 'D') {
        bobs[i].turn(5);
      }
      if (key == ' ' || key == ' ') {
        bobs[i].accelerate(.05);
      }
      
      if (key == 'h'|| key == 'H' ) {
        bobs[i].hyperspace();
      }
    }
  }

  if (keyPressed) {
    if (key == 'h') {
      for (int k = 0; k<bob.length; k++) {
        bob[k].hypostasis();
      }
    }
  }
  if (keyPressed ==false) {
    for (int i = 0; i<bobs.length; i++) {
      bobs[i].deaccerlate();
    }
  }
}
