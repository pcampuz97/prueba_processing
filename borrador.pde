class Borrador{
  int tamX=45;
  int tamY=45;
  
  void dibujarse(float circX, float circY){
   noFill();
   noStroke();
   ellipse(circX, circY, tamX, tamY);
   noStroke(); 
  }
  
}
