class Ball {
  PVector pos;
  PVector speed;
  float d = random(20, 50);
  color c = color(random(255), random(255), random(255));
  
  Ball() {
    pos = new PVector(random(35, width-35), random(35, height-35));
    speed = new PVector(random(-2, 2), random(-2,2));
  }

  void render() {
  
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, d, d);
  }

  void update() {
    pos.add(speed);
    if (pos.x < 5 || pos.x > width-5) {
      speed.x = -speed.x;
    }
    if (pos.y < 5 || pos.y > height-5) {
      speed.y = -speed.y;
    }
  }
}
