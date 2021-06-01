import processing.video.*;
Capture video;

Particula[] particulas;
Borrador borra;

int opacidadPar = 100; //opacidad de los pixeles
float velocidadX = 100;
float velocidadY = 100;
PImage borrador;
int numPar = 2500;
void setup() {
  size(1360, 768); // tamaño

  video = new Capture(this, width, height); //Captura del video
  borrador = loadImage("borrador.png");
  particulas = new Particula[numPar]; //arraylist de las particulas
  borra = new Borrador();
  for (int i = 0; i < particulas.length; i++) { //Creación de las particulas
    particulas[i] = new Particula();
  }
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(50);
  cursor(borrador);
  video.start(); //empieza el video 
  for (int i = 0; i < particulas.length; i++) { //Se mueven las particulas
    particulas[i].dibujarse(opacidadPar);
    particulas[i].move();
    float distancia = dist(mouseX, mouseY, particulas[i].x+particulas[i].tamX, particulas[i].y+particulas[i].tamY);
    if (distancia < 30) {
      particulas[i].x= cos(random(-10));
      particulas[i].y= sin(random(-50));
      
    }
  }
  borra.dibujarse(mouseX, mouseY);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      opacidadPar+=1;
    } else if (keyCode == DOWN) {
      opacidadPar-=1;
    }
  }
}
