class UI {
  Box[] boxes; 

  UI() {
    boxes = new Box[4];
  }

  void setup() {
    for(int i=0; i<boxes.length; i+=1) {
      switch(i) {
        case 0: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.shoe
          );   
          boxes[i].setup();
          break;
        case 1: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.hat
          );   
          boxes[i].setup();
          break;
        case 2: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.sweater
          );   
          boxes[i].setup();
          break;
        case 3: 
          boxes[i] = new Box(
            new PVector((width-400)/5 * (i+1) + 100*i, height-200),
            new PVector(100, 100),
            ClothingType.pants
          ); 
          boxes[i].setup();
          break;
      }
    }
  }

  void draw() {
    noFill();
    stroke(#FF0000);
    strokeWeight(5);
    for(int i=0; i<boxes.length; i+=1) {
      boxes[i].draw();
    }
  }
}
