Ball b1 = new Ball();
Ball b2 = new Ball();
Ball b3 = new Ball();

void setup() {

  size(600, 400);

}

void draw() {
  background(0);

  b1.render();
  b2.render();
  b3.render();

  b1.update();
  b2.update();
  b3.update();
}
