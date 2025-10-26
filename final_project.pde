Mannequin[] mannequins;
Clothes[] clothes;
Glass glass;
UI ui;

void setup() {
  size(1500, 900);
  background(0);

  mannequins = new Mannequin[3];


  ui = new UI();
  ui.setup();

  glass = new Glass();

  // Mannequin(mannequinNumber, scalingFactor)
  for(int i=0; i<3; i+=1) {
    mannequins[i] = new Mannequin(
      i,
      0.5
    );
  }
}

void draw() {
  background(0);
  for(int i=0; i<3; i+=1) {
    mannequins[i].draw();
  }
  ui.draw();
  glass.draw();
}

void update() {}

void keyPressed() {
  if(key=='b') {
    glass.transparency -= 10;
  }
}
// Mouse events
void mouseMoved() {}
void mousePressed() {
}

