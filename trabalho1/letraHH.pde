int x;
 void draw(){
if(x<360){x++;}
pushMatrix();
translate(width/2,height/2);// bring zero point to the center

stroke(0);

point (sin(radians(x))*50,cos(radians(x))*50);
point (sin(radians(x))*25,cos(radians(x))*25);

stroke(255);

point (sin(radians(x))*50,cos(radians(x))*25);//<ellipse
popMatrix();


}
