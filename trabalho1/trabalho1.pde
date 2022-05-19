float fr;
void setup(){
 size(900,900); 
 fr = 30; //frameRate;

}

void draw(){
pushMatrix();
 for (int i = 0; i<3 ; i++){
   for(int j = 0; j<3; j++){
      rect(i*300, j*300, 300, 300);  
      
   }
  }
popMatrix();
  drawA();
  //drawB();
  drawC();
  drawD();
  drawE();
  //drawF();
  //drawG();
  //drawH();
  //drawHH();
  
  
fill(255);
}

int n = 3;
void drawA(){
   pushMatrix();
  noStroke();
  translate(0,0);
  translate(150,150);
  if (frameCount%(2*int(frameRate)) == 0){
    n ++;
    if (n > 12){
      n=3;
    }
  }
  float a = -TWO_PI/n;
  int r = 120;
  translate(width/2,height/2);
  noFill();
  beginShape();
  for(int i=0; i<n; i++)
  {
    float x = r*cos(i*a);
    float y = r*sin(i*a);
    vertex(x,y);
  }
  endShape(CLOSE);
  popMatrix();
}

//void drawB(){}

void drawC(){
  pushMatrix();
  noStroke();
  translate(750,150);
  fill(255,255,0);
  noStroke();
  circle(0,0,70);
  rotate(frameCount*(TWO_PI)/(60*20));
  translate(100,0);
  fill(0,0,255);
  circle(0,0,25);
  rotate(frameCount*(TWO_PI)/(60*5));
  translate(30,0);
  fill(50);
  circle(0,0,7);
  popMatrix();
}

void drawD(){
  pushMatrix();
  noStroke();
  translate(150,450);
  fill(255,255,0);
  noStroke();
  //circle(0,0,100);
  rotate(frameCount*(TWO_PI)/(60*20));
  translate(200,0);
  fill(0,0,255);
  //circle(0,0,50);
  rotate(frameCount*(TWO_PI)/(60*5));
  translate(60,0);
  fill(50);
  circle(0,0,1);
  popMatrix();
}

void drawE(){
  pushMatrix();
  noStroke();
  translate(450,450);
  translate(width/2,height/2);
  fill(255,255,0);
  noStroke();
  circle(0,0,100);
  rotate(frameCount*(TWO_PI)/(60*10));
  translate(200,0);
  fill(0,0,255);
  circle(0,0,50);
  rotate(frameCount*(TWO_PI)/(60*1));
  translate(60,0);
  fill(50);
  circle(0,0,1);
  popMatrix();
}

//void drawF(){}

//void drawG(){}

//void drawH(){}

//void drawHH(){}
