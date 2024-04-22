//there is no variable or type called bubble in processing so we make it ourselves
//to code easily without having to code the bubble each time we need it so 
//this template is called the class which follows these steps 1.add variables 2.constructor 3. functionality

//introducing variety

 
 class Bubble {
   //data : we have to define x,y foreach bubble which is just for these objects 
   //so we code here not in main prog.
   float x;
   float y;
   float diameter;
   
  //to know the beginning conditions we write the constructor
  Bubble(float tempD){
    x = width/2;
    y = height;
    diameter = tempD;
    }
 
 void ascend(){
    y--;
    x = x + random(-2,2);
  }
   
 
  // we are basically definig how to control the bubble but these dont actually
 //do anything till in main code we tell what should be done so its like a remote
 
 
   // functionality: the Bubble will be displayed as an ellipse with coord. x, y
   void display(){
     stroke(0);
     fill(156);
     ellipse(x, y, diameter, diameter);
   }
   void top(){
     if(y < diameter/2){
       y = diameter/2;
     }
   }
 }       
