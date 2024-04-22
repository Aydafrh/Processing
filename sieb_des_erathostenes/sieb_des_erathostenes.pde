int max=1500;  //maximale zahl für die Primzahlen berechnet werden sollen
boolean[] prim;  //array in dem die Primzahlen stehen
int[] fertige_primzahlen;
int akt=2;



void setup() {
 
  size(1000, 800);
  background(255);
  frameRate(20);
  headline();
  zeichnezahlen();
  prim=new boolean[max];
  //next_step(2);
  init_zahlen();

 }



void headline(){   //Zeichnet die Überschrift und den Text darunter
  textSize(26);
  fill(255, 140, 0);
   text("Sieb des Eratosthenes",2,20); 
  textSize(10);
  fill(150);
   text("Durch Drücken der N-Taste (next) kommt die nächste Vielfachreihe dran",2,35); 
 }

void zeichnezahlen() {  //schreibt alle Zahlen ins Fenster
 textSize(12);
 fill(0,0,0);

  for (int z=2; z<max; z++){
   
   if(prim[z]){
     fill(0,255,0);
   }
   else{
     fill(255,0,0);
   }

  text(z,((z-(z-1)/28*28)-1)*35,20*((z-1)/28)+50);
  }
}


void init_zahlen(){
  for (int i=1; i<max;i++){
    prim[i]=true;
  }
}

void next_step(int v){
  for (int m=2;m<max/v;m++){
    prim[m*v]=false;
  }
}


void draw() {
  if (keyPressed) {
    if (key == 'n' || key == 'N') {
      akt++;
      next_step(akt);
    }
  }
}
