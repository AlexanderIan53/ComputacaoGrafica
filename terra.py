void setup()
{
  size(600,600);
  rectMode(CENTER);
}

void draw()
{
  background(200);
  translate(width/2,height/2);
  fill(255,255,0);
  noStroke();
  circle(0,0,100);
  translate(200,0);
  fill(0,0,255);
  circle(0,0,50);
  translate(60,0);
  fill(50);
  circle(0,0,15);
}
