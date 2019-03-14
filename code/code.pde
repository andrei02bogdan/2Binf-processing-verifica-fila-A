
int x = 1000;
int d = 4;

PShape piuma;
PShape hermione;

void setup() {
  fullScreen(P3D);
  piuma = loadShape("quill.obj");
  hermione = loadShape("witch.obj");
  hermione.rotateX(radians(180));
}

void draw() {
  background(#87D6FC);
  shape(piuma, x, height/2);
  piuma.setFill(color(#21B1FC));
  if ( x > width) {
    x = x + d;
  }


  shape( hermione, width*0.1, height*0.5);
  hermione.setFill(color(#8E551B)); 
  lights();
  
  x = x - d;

}
