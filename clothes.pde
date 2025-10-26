enum ClothingType{hat, shoe, pants, sweater}

class Clothes {
  PVector position;
  PVector size;
  PImage image;
  ClothingType type;
  int belongsTo;

  Clothes(PVector iPosition, PVector iSize, ClothingType iType, int iBelongsTo) {
    position = iPosition;
    size = iSize;
    type = iType;
    belongsTo = iBelongsTo;

    switch(type) {
      case hat:
        image = loadImage("body_1/blouse_1.png");
        break;
      case sweater:
        image = loadImage("body_1/blouse_1.png");
        break;
      case pants:
        image = loadImage("body_1/pants_1.png");
        break;
      case shoe:
        image = loadImage("body_1/shoes_1.png");
        break;
    }
  }

  void draw() {
    image(this.image, this.position.x, this.position.y, this.size.x, this.size.y);
  }
}
