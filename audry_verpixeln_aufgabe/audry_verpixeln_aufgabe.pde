PImage img;
int sqr;

void setup(){
  size(710,1000);
  img= loadImage("https://i.pinimg.com/736x/c1/57/0a/c1570a804fdf35120a72791f804e83e6.jpg");
 sqr = 14;
}
 
void draw(){
  image(img, 0, 0);
  stroke(3);
  
 for(int i=0 ; i<width; i+=sqr){
  for(int j=0; j<height; j+=sqr) {
    color a = get(i + sqr/2, j + sqr/2);
    fill(a);
    rect(0+i, 0+j, sqr, sqr);
  }
 }
}
