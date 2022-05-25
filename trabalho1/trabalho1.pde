float fr;
int videoScale = 300;
boolean inicio = true;
int nivel = 1;
void setup(){
 size(900,900); 
 fr = 30; //frameRate;  
 frameRate(fr);
}

void draw(){

  // Polígono regular de N lados inscrito em um círculo.
  fill(0,255,0);
  rect(0*videoScale, 0*videoScale, videoScale, videoScale);
  //drawA();

  
  // Koch -> Falta fechar ele 
  float ax, ay, bx, by;
  ax = 310;
  ay = 100;
  bx = 590;
  by = 100;
  if (frameCount%(2*int(frameRate)) == 0){
   if (nivel > 6){
      nivel = 0;
   }
   nivel++;
  }
  fill(255, 204, 0);
  rect(1*videoScale, 0*videoScale, videoScale, videoScale);
  //drawB(ax,ay,bx,by,nivel);
  //drawB(100,100,590,100,nivel);
  
  
  // Sol e Lua 
  fill(50, 55, 100);
  rect(2*videoScale, 0*videoScale, videoScale, videoScale);
  //drawC();
  
  
  // Rastro da Lua 
  fill(0, 0, 255);
  rect(0*videoScale, 1*videoScale, videoScale, videoScale);
  //drawD();
  
  
  // Sol e Lua mais distantes
  fill(150,0,150);
  rect(1*videoScale, 1*videoScale, videoScale, videoScale);
  //drawE();
  
  
  fill(255,200,200);
  rect(2*videoScale, 1*videoScale, videoScale, videoScale);
  //drawF();
  
  
  fill(255,0,0,255);
  rect(0*videoScale, 2*videoScale, videoScale, videoScale);
  //drawG();
  
  
  fill(204, 102, 0);
  rect(1*videoScale, 2*videoScale, videoScale, videoScale);
  //drawH();
  
  noFill();
  rect(2*videoScale, 2*videoScale, videoScale, videoScale);
  //drawHH();
  
}


int n = 3;
void drawA(){
  pushMatrix();
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

 void drawB(float Ax, float Ay, float Bx, float By, int nivel){
   pushMatrix();
    float ax, ay, bx, by;
    float cx, cy, dx, dy, ex, ey;
    
    ax = Ax;
    ay = Ay;
    bx = Bx;
    by = By;
    
    
    if(nivel == 0){
     line(ax,ay,bx,by);
     return;
    }

    cx = (bx-ax)*1/3 + ax ;
    cy = (by-ay)*1/3 + ay;

    dx = (bx-ax)*2/3 + ax;
    dy = (by-ay)*2/3 + ay;

    ex = ((dx-cx)*cos(PI/3) + (dy-cy)*sin(PI/3) )+cx;
    ey = ((dy-cy)*cos(PI/3) - (dx-cx)*sin(PI/3) )+cy;

    drawB(ax,ay,cx,cy,nivel-1);
    drawB(cx,cy,ex,ey,nivel-1);
    drawB(ex,ey,dx,dy,nivel-1);
    drawB(dx,dy,bx,by,nivel-1);
    
   popMatrix();
 }

void drawC(){
  pushMatrix();
  translate(0,0);
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
  translate(0,0);
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
  circle(0,0,2);
  popMatrix();
}

void drawE(){
  pushMatrix();
  translate(0,0);
  translate(450,450);
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


int speed = 3;
float d =10;

void drawH() {
  pushMatrix();
  translate(0,0);
  translate(450,750);
  stroke(255);
  strokeWeight(2);
  ellipse(450, 750, d, d);
  d = d + speed;
  if (d > width || d < 10) {
    speed=-speed;
  }
  popMatrix();
}

int x;
 void drawHH(){
 if(x<360){
 x++;
 }
 pushMatrix();
 translate(0,0);
 translate(750,750);// bring zero point to the center
 stroke(0);
 point (sin(radians(x))*50,cos(radians(x))*50);
 point (sin(radians(x))*25,cos(radians(x))*25);
 stroke(255);
 point (sin(radians(x))*50,cos(radians(x))*25);//<ellipse
 popMatrix();
}
