

float diameter = 50; // Anfangsgröße des Kreises
float scaleFactor = 1; // Skalierungsfaktor
float scalingSpeed = 0.05; // Geschwindigkeit der Skalierung

void setup() {
  size(400, 400);
 //  background(0);
 frameRate(24);
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2); // Kreis in die Mitte des Fensters verschieben

  scale(scaleFactor); // Kreis skalieren
  if (scaleFactor >= 4 || scaleFactor <= 0.5) { // Skalierungsfaktor umkehren, wenn die Grenzen erreicht sind
    scalingSpeed *= -1;
  }
 // scaleFactor += scalingSpeed; // Skalierungsfaktor aktualisieren
  // diameter = max(diameter * scaleFactor, 0); // Durchmesser berechnen und sicherstellen, dass er nicht negativ wird
  fill(255, 0, 0);
  ellipse(0, 0, diameter, diameter); // Kreis zeichnen
  
  scaleFactor += scalingSpeed; // Skalierungsfaktor aktualisieren
}
