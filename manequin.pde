class Mannequin {
  // The mannequin should have a position, size and image
  PVector position;
  PVector size;
  int mannequinNumber;
  PImage image;

  // For scaling the image
  float scaleFactor;

  // Body parts 
  BodyPart head;
  BodyPart torso;
  BodyPart legs;
  BodyPart feet;

  Mannequin(int iMannequinNumber, float iScaleFactor) {
    image = loadImage("manequin.png");
    mannequinNumber = iMannequinNumber;
    
    scaleFactor = iScaleFactor;
    size = new PVector(image.width * iScaleFactor, image.height * iScaleFactor);

    position = new PVector(
      // spacing between + imageWidth
      (width - (size.x * 3)) / 4 * (mannequinNumber + 1) + size.x*mannequinNumber,
      100
    );

    // Bodyparts(position, size, scaleFactor)
    // Head 
    head = new BodyPart(
      new PVector(position.x + mannequinNumber * size.x + 100, position.y + 0),
      new PVector(140, 160),
      0.5
    );
    // Torso
    torso = new BodyPart(
      new PVector(position.x + mannequinNumber * size.x + 19, position.y + 160),
      new PVector(300, 340),
      0.5
    );
    // Pants 
    legs = new BodyPart(
      new PVector(position.x + mannequinNumber * size.x + 19, position.y + 500),
      new PVector(300, 340),
      0.5
    );
    // Boots
    feet = new BodyPart(
      new PVector(position.x + mannequinNumber * size.x + 70, position.y + 840),
      new PVector(200, 220),
      0.5
    );
  }

  void draw() {
    image(this.image, this.position.x, this.position.y, this.size.x, this.size.y);
    head.draw();
    torso.draw();
    legs.draw();
    feet.draw();
  }
}
