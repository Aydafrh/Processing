int pacManCenterX = 100;
int pacManCenterY = 300;
//float x = 0;

 void setup(){
  //if the background order is here in the setup section if will show each frame of the movement meaning it will have a so called footprint in the window 
// background(255); 
  size(600,600);
} 

void draw(){

  //if the background order is here in the draw section it would make movement like animation
  background(255);
  float arcStart = 0;
  float arcEnd = 2 * PI;
  int pacMan = 200;
  
  float maxOpenAngle = PI / 3;
  
  float mouthOpening = maxOpenAngle/2;
 // float mouthOpening = maxOpenAngle/2 * abs(((x/60.0) % 2) - 1);
  
  //goes to end and starts the motion over
  pacManCenterX = (pacManCenterX + 1) % width;
  
   float pacManEyesize = pacMan * 0.25;
  
   //pacMan
   fill(250,200,0);
  arc(pacManCenterX,pacManCenterY, pacMan, pacMan,arcStart + mouthOpening, arcEnd - mouthOpening, PIE);
  
  //eye
  fill(0);
   ellipse(pacManCenterX + pacManCenterY / 8, pacManCenterY - pacMan / 4 ,pacManEyesize , pacManEyesize);
 // ellipse(325, 250, pacManEyesize, pacManEyesize);
 
 //x += 2;
} 
