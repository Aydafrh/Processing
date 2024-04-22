// Class Mover

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;

  float mass;    // Adding mass as a float variable


  Mover() {
    mass = 1;   // And for now, we'll just set the mass equal to 1 for simplicity.
    location = new PVector(30, 30);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  //    Now setting these variables with arguments
  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  //// Simple definition m = 1
  //  void applyForce(PVector force) {
  //    acceleration = force;   // Newton's second law at its simplest.
  //  }

  // Receive a force, divide by mass, and add to acceleration.
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);  // Motion from Chapter 1
    location.add(velocity);
    acceleration.mult(0);      //  Now add clearing the acceleration each time!
  }


  void display() {
    stroke(0);
    fill(175, 0, 0);
    ellipse(location.x, location.y, mass*16, mass*16);   // Scaling the size according to mass.
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }


    /* Even though we said we shouldn't touch location and velocity directly,
     there are some exceptions. Here we are doing so as a quick and easy way
     to reverse the direction of our object when it reaches the edge.
     */

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}
