//globale Variablen
int r=30; // Kreisradius
int N=10; // Anzahl der Bälle
int VMAX=6; // Maximale Geschwindigkeit der Bälle in x und y-Richtung (in Pixel pro Bildschirmerneurungszeit)

int[] x = new int[N]; // x-Koordinaten der Bälle
int[] y = new int[N]; // y-Koordinaten der Bälle
int[] vx = new int[N]; // x-Geschwindigkeitskomponente der Bälle
int[] vy = new int[N]; // x-Geschwindigkeitskomponente der Bälle
int[] colR = new int[N]; // R-Farbe der Bälle
int[] colG = new int[N]; // G-Farbe der Bälle
int[] colB = new int[N]; // B-Farbe der Bälle
Boolean[] alive = new Boolean[N];  // Ball von Killerball getroffen

int xK,yK; // Koordinaten des Killerballs
int rK=10;// Radius des Killerballs
int vK=10; // Geschwidnigkeit des Killerballs bei Tastendruck
 
void setup(){
  size(800,600);
  frameRate(100); // 100 mal in der Sekunde wird Bildschirm erneuert
  // Startpositionen und -geschwindigkeiten der Bälle zufällig
  for (int i=0; i<N;i++){
    x[i] = (int) random(r,width-r);
    y[i] = (int) random(r,height-r);
    vx[i] = (int) random(1,VMAX);
    vy[i] = (int) random(1,VMAX);
    colR[i] = (int) random(0,255);
    colG[i] = (int) random(0,255);
    colB[i] = (int) random(0,255);
    alive[i]=true;
  }
  
  // Killerball startet in der Mitte
  xK=width/2;
  yK=height/2;
   
}

void draw(){
  background(150);
  for (int i=0; i<N;i++){
    
      if (alive[i]) {
        fill(colR[i],colG[i],colB[i]);
        circle(x[i],y[i],r);
      
        x[i]=x[i]+vx[i];
        y[i]=y[i]+vy[i];
        
        if (x[i]-r<0 || x[i]+r>width) vx[i]=-vx[i]; 
        if (y[i]-r<0 || y[i]+r>height) vy[i]=-vy[i]; 
        
        if (dist(x[i], y[i], xK, yK)<rK ) alive[i]=false;
      }
  }  
  
  // Killerball zeichnen
      fill(255,0,0);
      circle(xK,yK,rK);
}

void keyPressed(){ // Killerball 
 
  if (keyCode == RIGHT) {
      xK+=vK;
    }
  if (keyCode == LEFT) {
      xK-=vK;
    }
  if (keyCode == UP) {
      yK-=vK;
    }
  if (keyCode == DOWN) {
      yK+=vK;
    }

}
