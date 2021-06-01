class Particula {
  float x = random(-10, 10);
  float y = random(-10, 10);
  float tamX;
  float tamY;
  float velx;
  float vely;


  public Particula() {
    tamX = random(4, 35);
    tamY = random(4, 35);
    float posx = random(10);
    float posy= random(50);
    float vel = random(1);
    velx = cos(posx)*vel;
    vely = sin(posy)*vel;
  }


  void dibujarse(int opacidad) {
    noStroke();
    color c = video.get(int(x), int(y));
    fill(c, opacidad);
    rect(x, y, tamX, tamY);
  }

  void move(){
    x += velx;
    y += vely;
    if (y < 0) {
      y = height;
    } 
    if (y > height) {
      y = 0;
    }
    if (x < 0) {
      x = width;
    } 
    if (x > width) {
      x = 0;
    }
  }
}
