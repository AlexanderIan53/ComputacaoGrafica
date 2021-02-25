void setup() {
  size (888, 888); 
  star(300, 300, 
    100, 200, 
    9);
}
 
 
void star(float x, float y, 
  float radius1, float radius2, 
  int npoints) { 
 
  float angle = TWO_PI / npoints; 
  float halfAngle = angle/2.0; 
 
 
  for (float a = 0; a < TWO_PI; a += angle) { 
    float sx1 = x + cos(a) * radius2; 
    float sy1 = y + sin(a) * radius2;
 
    noStroke();
    fill(255, 0, 0); 
    ellipse(sx1, sy1, 5, 5); 
 
    float sx2 = x + cos(a+halfAngle) * radius1; 
    float sy2 = y + sin(a+halfAngle) * radius1;
    fill(2, 255, 0);
    ellipse(sx2, sy2, 5, 5);
 
    stroke(0);
    line(sx1, sy1, sx2, sy2);
  }

 beginShape(); 
  for (float a = 0; a < TWO_PI; a += angle) { 
    float sx = x + cos(a) * radius2; 
    float sy = y + sin(a) * radius2; 
    vertex(sx, sy); 
    sx = x + cos(a+halfAngle) * radius1; 
    sy = y + sin(a+halfAngle) * radius1; 
    vertex(sx, sy);
  } 
  endShape(CLOSE);

 int outerRadiusLowerBound = 90;
 float outerRadius = round(map(mouseY, 0, height, outerRadiusLowerBound, width-20));
}


