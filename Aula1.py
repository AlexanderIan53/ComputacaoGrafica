void setup()
{
  size(600,600);
  rectMode(CENTER);
}

void draw()
{
  background(200);
  translate(width/2,height/2);
  rotate(10*sin(frameCount*PI/(60)));
  printMatrix();
  rect(0,0,200,50);
}
