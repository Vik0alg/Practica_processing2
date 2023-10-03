PShape skull;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("Skull.jpg");
  skull = loadShape("12140_Skull_v3_L2.obj");
  skull.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (5);
  shape (skull);
  popMatrix();

  theta+=.01; //increment angle
}
