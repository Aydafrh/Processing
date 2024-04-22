// making a variety of objects 

Bubble b1;
Bubble b2;

void setup(){
  size(640, 360);
  // new is only for objects and the Bubble here is the constructor of object
  //we can also give a bunch of parameters to this argument what it does is recieve the value pass it to theclass tempD 
//b1 = new Bubble/100,50,64, color(255,0,0));
  b1 = new Bubble(64);
   b2 = new Bubble(16);
}

void draw(){
  background(255);
  
 //using the remote made in class we act on b using dot syntax
  b1.ascend();
  b1.display();
  b1.top();
  
   b2.ascend();
  b2.display();
  b2.top();
  
}
