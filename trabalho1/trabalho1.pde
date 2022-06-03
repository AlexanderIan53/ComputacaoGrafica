float fr;
int videoScale = 300;
boolean inicio = true;
int nivel = 1;
void setup(){
 size(900,900); 
 fr = 30; //frameRate;  
 frameRate(fr);
 rect(0*videoScale, 1*videoScale, videoScale, videoScale);
}

void draw(){

  fill(0,255,0);
  rect(0*videoScale, 0*videoScale, videoScale, videoScale);
  drawA();

  fill(255, 204, 0);
  rect(1*videoScale, 0*videoScale, videoScale, videoScale);
  drawB();

  fill(50, 55, 100);
  rect(2*videoScale, 0*videoScale, videoScale, videoScale);
  drawC();
  
  //noFill();
  
  drawD();
   
  fill(150,0,150);
  rect(1*videoScale, 1*videoScale, videoScale, videoScale);
  drawE();
  
  fill(255,200,200);
  rect(2*videoScale, 1*videoScale, videoScale, videoScale);
  drawF();
  
  fill(255,0,0,255);
  rect(0*videoScale, 2*videoScale, videoScale, videoScale);
  drawG();
  
  fill(204, 102, 0);
  rect(1*videoScale, 2*videoScale, videoScale, videoScale);
  drawH();
  
  noFill();
  rect(2*videoScale, 2*videoScale, videoScale, videoScale);
  drawHH();
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

void Koch(PVector a,PVector b,int nivel){
float ax = a.x;
float ay = a.y;
float bx = b.x;
float by = b.y;
float teta = PI/3;
if(nivel==0){
line(ax,ay,bx,by);
return;
}
//calcular c,d,e
PVector c = new PVector(((b.x-a.x)*1/3) + a.x,((b.y-a.y)*1/3) + a.y);
PVector d = new PVector(((b.x-a.x)*2/3) + a.x,((b.y-a.y)*2/3) + a.y);
PVector e = new PVector((((d.x-c.x)*cos(teta))+((d.y-c.y)*sin(teta)))+c.x,(((d.y-c.y)*cos(teta))-((d.x-c.x)*sin(teta)))+c.y);
Koch(a,c,nivel-1);
Koch(c,e,nivel-1);
Koch(e,d,nivel-1);
Koch(d,b,nivel-1);
}

int y = 0;
 void drawB(){ 
  pushMatrix();
  //Altera o nivel da curva de Koch
  if (frameCount % (2*int(frameRate)) == 0) {
    y++;
    if (y > 5){
      y = 0;   
    }
  }
  
  int n = y;
  float a = -TWO_PI/4;
  int r = 4 * (width/3)/10;
  translate(width * 3/6,height/6);
  noFill();
  stroke(0,0,0);
  beginShape();
    PVector A = new PVector (r*cos(0*a),r*sin(0*a));
    PVector B = new PVector (r*cos(1*a),r*sin(1*a));
    PVector C = new PVector (r*cos(2*a),r*sin(2*a));
    PVector D = new PVector (r*cos(3*a),r*sin(3*a));
    for(int i=0; i<n; i++) {
      Koch(A,B,n);
      Koch(B,C,n);
      Koch(C,D,n);
      Koch(D,A,n);
    }
  endShape(CLOSE);
  popMatrix();
}

void drawC(){
  pushMatrix();
  translate(0,0);
  translate(750,150);
  fill(255,255,0);
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
  rotate(frameCount*(TWO_PI)/(60*20));
  translate(100,0);
  rotate(frameCount*(TWO_PI)/(60*5));
  translate(30,0);
  fill(100);
  circle(0,0,7);
  popMatrix();
  if (frameCount == 1200) {
  rect(0*videoScale, 1*videoScale, videoScale, videoScale);
  }
}

void drawE(){
  pushMatrix();
  translate(0,0);
  translate(450,450);
  fill(255,255,0);
  circle(0,0,70);
  rotate(frameCount*(TWO_PI)/(60*10));
  translate(100,0);
  fill(0,0,255);
  circle(0,0,25);
  rotate(frameCount*(TWO_PI)/(60*1));
  translate(30,0);
  fill(50);
  circle(0,0,7);
  rotate(frameCount*(TWO_PI)/(60*1));
  translate(10,0);
  fill(50);
  circle(0,0,5);
  popMatrix();
}

float u = 0;
void drawF(){
  pushMatrix();  
  translate(0,0);
  translate(750,450);
  strokeCap(ROUND);
  strokeWeight(2);
  stroke(0,0,0);
   if (frameCount % 1 == 0 && u <= 360) {
     float xu = 30 * cos(u) * (exp(cos(u)) - 2 * cos(4 * u) - sin(pow((u/12), 5)));
     float yu = 30 * sin(u) * (exp(cos(u)) - 2 * cos(4 * u) - sin(pow((u/12), 5)));
     point(xu,yu);
     u++;
   }
   popMatrix();
}

ArrayList<PVector> angulo = new ArrayList<PVector>();
  float a = 0.2;
  float b = 0.7;
  float R = 10;
  float q1 = 3;
  float q2 = 4;
  float uu = 0;
void drawG(){
pushMatrix();  
  translate(0,0);
  translate(150,750);
  beginShape();
  for (PVector v : angulo){
  vertex(v.x, v.y);
  if (uu > TWO_PI){
     uu = 0;
   }
  }
  endShape(CLOSE);
   float x = R * (1 +a*cos(2*(uu)+q1));
   float y = R * (b*cos(3*(uu)+q2));
   angulo.add(new PVector(x,y));
   popMatrix();
 }

float ian = 0;
void drawH() {
  translate(0,0);
  pushMatrix();
  translate(400,700);
  rotate(ian);
  rect(-26, -26, 52, 52);
  popMatrix();
  pushMatrix();
  translate(400,800);
  rotate(ian);
  rect(-26, -26, 52, 52);
  popMatrix();
  pushMatrix();
  translate(500,700);
  rotate(ian);
  rect(-26, -26, 52, 52);
  popMatrix();
  pushMatrix();
  translate(500,800);
  rotate(ian);
  rect(-26, -26, 52, 52);
  popMatrix();
  ian+=0.05;
  
}

int x;
 void drawHH(){
 if(x<360){
 x++;
 }
 pushMatrix();
 translate(0,0);
 translate(750,750);
 point (sin(radians(x))*50,cos(radians(x))*50);
 point (sin(radians(x))*25,cos(radians(x))*25);
 point (sin(radians(x))*50,cos(radians(x))*25);
 popMatrix();
}
