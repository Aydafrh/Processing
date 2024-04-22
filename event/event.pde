void setup(){
  size(640,360);
  background(50);
}

void draw() {
  
  //if we have the background in draw()  we cannot see the drawing because it will be wiped in each frame
 //background(50);
  stroke(255);
 line(pmouseX , pmouseY , mouseX , mouseY);
  
} 

// with this event the canvas will be wiped each time I click on the canvas 
void mousePressed(){
  background(50);
}

//with this event the commands that we coded in the curlz bracket will occur when we press the key 
void keyPressed(){
  background(0,255,0);
}
