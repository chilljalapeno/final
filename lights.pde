class Lights {
  PVector size;
  PVector position;
  PImage image;
  float scaleFactor;

  Lights(PVector iPosition, PVector iSize, float iScaleFactor) {
    size = new PVector(iSize.x*iScaleFactor, iSize.y*iScaleFactor);
    position = new PVector(iPosition.x, iPosition.y);
    scaleFactor = iScaleFactor;
    image = loadImage("reflector.png");
  }

  void draw() {

  }
}
