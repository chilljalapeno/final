class BodyPart {
  PVector size;
  PVector position;
  float scaleFactor;

  BodyPart(PVector iPosition, PVector iSize, float iScaleFactor) {
    size = new PVector(iSize.x*iScaleFactor, iSize.y*iScaleFactor);
    position = new PVector(iPosition.x, iPosition.y);
    scaleFactor = iScaleFactor;
  }

  void draw() {
    if(this.isInSquare(new PVector(mouseX, mouseY), this.position, this.size)) {
      noFill();
      stroke(#FF0000);
      strokeWeight(1);
      rect(this.position.x , this.position.y, this.size.x, this.size.y);
    }
  }

  boolean isInSquare(PVector position, PVector rectPosition, PVector rectSize) {
    boolean isX = rectPosition.x < position.x && position.x < rectPosition.x + rectSize.x;
    boolean isY = rectPosition.y < position.y && position.y < rectPosition.y + rectSize.y;
    return isX && isY;
  }

}

