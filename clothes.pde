enum ClothingType{hat, shoe, pants, sweater}

class Clothes {
  PVector position;
  PVector size;
  PImage image;
  ClothingType type;
  int belongsTo;

  Clothes(PVector iPosition, PVector iSize, ClothingType iType, int iBelongsTo, PImage iImage) {
    position = iPosition;
    size = iSize;
    type = iType;
    belongsTo = iBelongsTo;
    image = iImage;
  }

  void draw() {
    image(this.image, this.position.x, this.position.y, this.size.x, this.size.y);
  }
}
