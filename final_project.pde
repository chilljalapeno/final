// How to use, what it is
// It is a dress-up game
// Dress the mannequins as the ones in the provided image. 
// In order to move the items:
// Keep the key pressed
// [A for box 1] [R for box 2] [S for box 3] and [T for box 4]
// and move the mouse across the drop areas in order to dress them up. 
// Reduce glass transparency with B.
// Increase glass transparency with N.
Mannequin[] mannequins;
Clothes[] clothes;
Glass glass;
UI ui;

void setup() {
  size(1500, 900);
  background(0);

  mannequins = new Mannequin[3];
  clothes = new Clothes[9];

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
  fill(#FFAC1C, 100);
  rect(100, 100, 1300, 700);
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
  if(key=='n') {
    glass.transparency += 10;
  }
    if(key=='a') {
  if(ui.boxes[0].clothes.size() != 0) {
      ui.boxes[0].clothes.get(ui.boxes[0].clothes.size() - 1).position = new PVector(mouseX, mouseY);
    }
  }
    if(key=='r') {
  if(ui.boxes[1].clothes.size() != 0) {
      ui.boxes[1].clothes.get(ui.boxes[1].clothes.size()-1).position = new PVector(mouseX, mouseY);
    }
  }
    if(key=='s') {
  if(ui.boxes[2].clothes.size() != 0) {
      ui.boxes[2].clothes.get(ui.boxes[2].clothes.size()-1).position = new PVector(mouseX, mouseY);
    }
  }
    if(key=='t') {
  if(ui.boxes[3].clothes.size() != 0) {
      ui.boxes[3].clothes.get(ui.boxes[3].clothes.size()-1).position = new PVector(mouseX, mouseY);
    }
  }
}

void keyReleased() {
  if(ui.boxes[0].clothes.size() != 0) {
    if(key=='a') {
      Clothes currentClothes = ui.boxes[0].clothes.get(ui.boxes[0].clothes.size() - 1);
      if(Util.isInSquare(new PVector(mouseX, mouseY), mannequins[currentClothes.belongsTo].feet.position, mannequins[currentClothes.belongsTo].feet.size)) {
        currentClothes.position = mannequins[currentClothes.belongsTo].feet.position;
        currentClothes.size = mannequins[currentClothes.belongsTo].feet.size;
        mannequins[currentClothes.belongsTo].clothes.add(currentClothes);
        ui.boxes[0].clothes.remove(ui.boxes[0].clothes.size() - 1);
      }
    }
  }
  if(ui.boxes[1].clothes.size() != 0) {
    if(key=='r') {
      Clothes currentClothes = ui.boxes[1].clothes.get(ui.boxes[1].clothes.size() - 1);
      if(Util.isInSquare(new PVector(mouseX, mouseY), mannequins[currentClothes.belongsTo].head.position, mannequins[currentClothes.belongsTo].head.size)) {
        currentClothes.position = mannequins[currentClothes.belongsTo].head.position;
        currentClothes.size = mannequins[currentClothes.belongsTo].head.size;
        mannequins[currentClothes.belongsTo].clothes.add(currentClothes);
        ui.boxes[1].clothes.remove(ui.boxes[1].clothes.size() - 1);
      }
    }
  }
  if(ui.boxes[2].clothes.size() != 0) {
    if(key=='s') {
      Clothes currentClothes = ui.boxes[2].clothes.get(ui.boxes[2].clothes.size() - 1);
      if(Util.isInSquare(new PVector(mouseX, mouseY), mannequins[currentClothes.belongsTo].torso.position, mannequins[currentClothes.belongsTo].torso.size)) {
        currentClothes.position = mannequins[currentClothes.belongsTo].torso.position;
        currentClothes.size = mannequins[currentClothes.belongsTo].torso.size;
        mannequins[currentClothes.belongsTo].clothes.add(currentClothes);
        ui.boxes[2].clothes.remove(ui.boxes[2].clothes.size() - 1);
      }
    }
  }
  if(ui.boxes[3].clothes.size() != 0) {
    if(key=='t') {
      Clothes currentClothes = ui.boxes[3].clothes.get(ui.boxes[3].clothes.size() - 1);
      if(Util.isInSquare(new PVector(mouseX, mouseY), mannequins[currentClothes.belongsTo].legs.position, mannequins[currentClothes.belongsTo].feet.size)) {
        currentClothes.position = mannequins[currentClothes.belongsTo].legs.position;
        currentClothes.size = mannequins[currentClothes.belongsTo].legs.size;
        mannequins[currentClothes.belongsTo].clothes.add(currentClothes);
        ui.boxes[3].clothes.remove(ui.boxes[3].clothes.size() - 1);
      }
    }
  }
}

// Mouse events
void mouseMoved() {}
void mousePressed() {}

