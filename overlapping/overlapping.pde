Particle p1;
Particle p2;
Particle p3;

void setup (){
  size(600,400);
  // as we can see p1 and p2 both require 3 arguments  so thez have one constructor
  //P3 requires  non arguments so it has a different constructor as p1 and p2
  p1 = new Particle (100,100,50);
  p2 = new Particle (500,300,100);
  p3 = new Particle ();
}

void draw(){
  background(0);

  //to see if the circles are overlapping we cand simply use the distance to find out
 
  //run it and overlap the circles to see the green background
  // float d = dist(p1.x, p1.y, p2.x, p2.y);
 //if ( d <p1.r + p2.r) {
    // background(0,255,0);
  // }
   
   
   //instead of if above why dont we define the overlaps function in the class and:
     if(p1.overlaps(p2)){ 
     background(0,255,0);
   }
   
   p2.x = mouseX;
  p2.y = mouseY;
  
    
   p1.display();
   p2.display();
   p3.display();
}
