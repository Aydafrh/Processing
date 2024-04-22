
// A random walker object!

class Walker {
  float x, y;
  float r, g, b, a;

  Walker() {
    x = width/2;
    y = height/2;

   
  }

  void render() {
    stroke(random(255));
    strokeWeight(random(48));
    point(x, y);
  }

  void render2() {
    stroke(255);
    strokeWeight(random(2));
    point(x, y);
  }

  void render3() {
    stroke(255);
    strokeWeight(random(2));
    point(x, y);
  }



  // stepLine  - moving lines
  void stepLine() {

    float nextX, nextY;
   
    //strokeWeight(random(12));
    strokeWeight(random(2));
    // stroke(255);
    stroke(30);
    nextX  = x + random(-60, 60);
    nextY  =  y + random(-60, 60);

    line(x, y, nextX, nextY);

    x = nextX;
    y = nextY;

    //nextX = constrain(nextX, 0, width-1);
    //nextY = constrain(nextY, 0, height-1);
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);

   
    
  }


  // END OF CLASS DEFINITION
}
