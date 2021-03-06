ArrayList<Circle> circles;
float unit = 80;
int nOfR;
int nOfC;

color c1 = color(219, 10, 91);
color c2 = color(236, 236, 236);
color c3 = color(68, 108, 179); // SAN MARINO
color c4 = color(197, 239, 247); // HUMMING BIRD
void setup() {
  size(960, 540);
  circles = new ArrayList<Circle>();
  nOfC = round(width / unit);
  nOfR = round(height / unit);
}

void draw() {
  // println(frameRate);
  background(c4);
  for (int i = 0, n = circles.size(); i < n; i++) {
    Circle cir = circles.get(i);
    cir.update();
    cir.render();
  }
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY, unit / 2));
}

void keyPressed() {
  if (key == 'a') {
    saveFrame("frame/####.png");
  }
}
