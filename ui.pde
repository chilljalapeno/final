class Box {
  PVector position;
  PVector size;
  Clothes clothes;
  
  Box(PVector iPosition, PVector iSize, Clothes iClothes) {
    position = iPosition;
    size = iSize;
    clothes = iClothes;
  }

  void draw() {
    rect(this.position.x, this.position.y, this.size.x, this.size.y);
    clothes.draw();
  }
}

class UI {
  Box[] boxes; 

  UI() {
    boxes = new Box[4];
  }

  void setup() {
    for(int i=0; i<boxes.length; i+=1) {
      switch(i) {
        case 0:
          clothes = new Clothes(new PVector((width-400)/5 * (i+1) + 100*i, height-200), new PVector(100, 100), ClothingType.hat);
          break;
        case 1:
          clothes = new Clothes(new PVector((width-400)/5 * (i+1) + 100*i, height-200), new PVector(100, 100), ClothingType.sweater);
          break;
        case 2:
          clothes = new Clothes(new PVector((width-400)/5 * (i+1) + 100*i, height-200), new PVector(100, 100), ClothingType.pants);
          break;
        case 3:
          clothes = new Clothes(new PVector((width-400)/5 * (i+1) + 100*i, height-200), new PVector(100, 100), ClothingType.shoe);
          break;
        default: 
          clothes = new Clothes(new PVector((width-400)/5 * (i+1) + 100*i, height-200), new PVector(100, 100), ClothingType.shoe);
          break;
      }

      boxes[i] = new Box(
        new PVector((width-400)/5 * (i+1) + 100*i, height-200),
        new PVector(100, 100),
        clothes
      );     
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
