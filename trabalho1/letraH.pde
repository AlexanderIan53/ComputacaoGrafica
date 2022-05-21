float centerX;
float centerY;

int speed = 3;

float d =10;

void setup() {
  frameRate(30);
  size(300, 300);
  centerX = width *.5;
  centerY = height *.5;
  noStroke();
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();
  
  ellipse(centerX, centerY, d, d);
  
  d = d + speed;

  if (d > width || d < 10) {
    speed=-speed;
  }
}
