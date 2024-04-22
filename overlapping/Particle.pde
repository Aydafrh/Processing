class Particle {
  float x, y;
  float r;
   //overloading: constructors based on arguments
   //constructor for p1 and p2 that requires 3 arguments
  Particle (float tempX, float tempY, float tempR){
  x = tempX;
   y = tempY;
    r = tempR; 
  } 
 //constructor for p3  that requires no argumentsso no float tempX...
  Particle(){
    x = random(width);
    y = random(height);
    r = random(4,18);
    
  }

//if schleife in main code returns the value true or false so its not void but boolean
boolean overlaps(Particle other){
  float d = dist(x, y, other.x, other.y);
  if( d < r + other.r){
    return true;
  } else { 
    return false;
  }
}

void display(){
  stroke(255);
  strokeWeight(5);
  noFill();
  ellipse(x, y, r*2, r*2);
   
}

}
