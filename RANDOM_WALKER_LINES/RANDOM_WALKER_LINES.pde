
Walker w;


void setup() {
  size(800, 800);
  // fullScreen();
  // Create a walker object

  w = new Walker();


  background(127);
  frameRate(4);
  // background(174, 95, 120);
}


void draw() {
  // Run the walker object

//  for (int i=0; i < 100; i++) {

    // step, render and LINES
    w.stepLine();

  
 // }
}
