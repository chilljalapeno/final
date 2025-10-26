class Mannequin {
  // The mannequin should have a position, size and image
  PVector position;
  PVector size;
  int mannequinNumber;
  PImage image;

  ArrayList<Clothes> clothes;
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
      new PVector(this.position.x + 50, position.y + 0),
      new PVector(140, 160),
      0.5
    );
    // Torso
    torso = new BodyPart(
      new PVector(this.position.x  + 9.8, position.y + 80),
      new PVector(300, 340),
      0.5
    );
    // Pants 
    legs = new BodyPart(
      new PVector(this.position.x  + 9.8, position.y + 250),
      new PVector(300, 340),
      0.5
    );
    // Boots
    feet = new BodyPart(
      new PVector(this.position.x + 35, position.y + 420),
      new PVector(200, 220),
      0.5
    );

    clothes = new ArrayList<Clothes>();
  }

  void draw() {
    image(this.image, this.position.x, this.position.y, this.size.x, this.size.y);
    head.draw();
    torso.draw();
    legs.draw();
    feet.draw();
    for(int i=0; i<clothes.size(); i+=1) {
      clothes.get(i).draw();
    }
  }
}
