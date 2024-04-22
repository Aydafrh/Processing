
PImage shrek;
PImage sorted;
PImage img;

void setup (){
  size(200,100);
  img = loadImage("https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/04/shrek-5-mike-myers.jpg");
  sorted = createImage(shrek.width, shrek.height, RGB);
  
  //img.loadPixels();
  //for (int i = 0; i < sorted.pixels.length; i++) {
    //sorted.pixels[i] = img.pixels[i];
    //}
    
    sorted = shrek.get();
    sorted.loadPixels();
    
    //selection sort
  for (int i = 0; i < sorted.pixels.length; i++) {
    float record = -1;
    int selectedPixel = i;
    for (int j = i; j < sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      float b = hue(pix);
      if ( b > record){
        selectedPixel = j;
        record = b;
         
      }
       }
       //swap selectedPixel woth i
       color temp = sorted.pixels[i];
       sorted.pixels[i]= sorted.pixels[selectedPixel];
        sorted.pixels[selectedPixel] = temp;
  }
sorted.updatePixels();
}
void draw() {
  background(0);
  image(img,0,0);
image(sorted, 100, 0);
}
