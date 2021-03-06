void setup() {
  size(800, 800, P3D);
  frameRate(160);
}

float r = 500;
int n = 20;
float angle = 0;
float offsetAngle = 250;
float offsetAngleY = 125;
float range = 300;
float iteration = 0;


void draw() {
  translate(width/2, height/2);
  background(0);

  rotateY(radians(offsetAngle));
  rotateX(radians(offsetAngleY));
  noFill();
  stroke(255);
  float delta = r/n;
  float angleDelta = angle/n;

  for(int i = 1; i <= n; i++) {
    pushMatrix();
    rotateX( radians ( range * sin(radians(iteration) + 0.3*sin(radians(10*i)) ) ) );
    ellipse(0, 0, delta * i, delta * i);
    popMatrix();
  }

  iteration += 0.3;
  //println("sin(radians(iteration)) = " + str( sin(radians(iteration)) ));
  println("iteration = " + str(iteration));

}

void keyPressed() {
  if (key == 'a') {
    offsetAngle = offsetAngle + 10;
  }
  if (key == 'b') {
    offsetAngle = offsetAngle - 10;
  }
}