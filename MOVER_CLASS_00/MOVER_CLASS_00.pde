Mover m0, m1, m2;


void setup() {
  size(800, 600);
  m0 = new Mover();
  m1 = new Mover(10, 200, height/2);  // // A big Mover on the left side of the window
  m2 = new Mover(2, width-50, height/2);  // A small Mover on the right side of the window
}

void draw() {
  background(0);
  // fill(255, 0, 0);

  // Make up two forces.

  PVector wind = new PVector(0.04, 0);
  PVector gravity = new PVector(0, 0.4);

  //  apply both forces to each object.

  //m0.update();
  //m0.display();

  m1.applyForce(wind);
  m1.applyForce(gravity);
  m1.update();
  m1.display();
  m1.checkEdges();

  m2.applyForce(wind);
  m2.applyForce(gravity);
  m2.update();
  m2.display();
  m2.checkEdges();
}


//if (mousePressed) {
//  PVector wind = new PVector(0.5,0);
//  mover.applyForce(wind);
//}
