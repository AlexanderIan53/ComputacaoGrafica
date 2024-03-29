//                                    E
//                              /             \
//  -----------------------------------------------------------------------
//  A                      C                      D                       B
// 
// 
// Descobrir C e D -> C = (B-A) * t + A
// Rodar pontos pra fazer triangulo equilatero pro E (60º ou pi/3)

void setup(){
size(600,600);
background(200);
}

void Koch(float ax, float ay, float bx, float by, int nivel){
  if(nivel==0){
    line(ax,ay,bx,by);
    return;
  }
  float cx, cy, dx, dy, ex, ey;
  cx = (bx-ax)*1/3 + ax ;
  cy = height/2;

  dx = (bx-ax)*2/3 + ax;
  dy = height/2;

  ex = ((dx-cx)*cos(PI/3) + (dy-cy)*sin(PI/3))+cx;
  ey = ((dy-cy)*cos(PI/3) - (dx-cx)*sin(PI/3))+cy;
  
  Koch(ax,ay,cx,cy,nivel-1);
  Koch(cx,cy,ex,ey,nivel-1);
  Koch(ex,ey,dx,dy,nivel-1);
  Koch(dx,dy,bx,by,nivel-1);
}


void draw(){
 /*
float ax, ay, bx, by, cx, cy, dx, dy, ex, ey;
ax = 10;
ay = height/2;

bx = width - 10;
by = height/2;

cx = (bx-ax)*1/3 + ax ;
cy = height/2;

dx = (bx-ax)*2/3 + ax;
dy = height/2;

ex = ((dx-cx)*cos(PI/3) + (dy-cy)*sin(PI/3))+cx;
ey = ((dy-cy)*cos(PI/3) - (dx-cx)*sin(PI/3))+cy;

beginShape(LINES);
vertex(ax,ay);
vertex(cx,cy);
vertex(cx,cy);
vertex(ex,ey);
vertex(ex,ey);
vertex(dx,dy);
vertex(dx,dy);
vertex(bx,by);
endShape(CLOSE);
*/

float ax,ay,bx,by;
ax=10;
ay=height/2;
bx = width - 10;
by = height/2;
Koch(ax,ay,bx,by,1);
