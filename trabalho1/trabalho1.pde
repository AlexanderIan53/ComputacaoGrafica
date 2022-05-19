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
  //drawA();
  //drawB();
  drawC();
  drawD();
  //drawE();
  //drawF();
  //drawG();
  //drawH();
  
  
fill(255);
}

//void drawA(){}

//void drawB(){}

//void drawC(){}

//void drawD(){}

//void drawE(){}

//void drawF(){}

//void drawG(){}

//void drawH(){}

//void drawA(){}
