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
    if(Util.isInSquare(new PVector(mouseX, mouseY), this.position, this.size)) {
      noFill();
      stroke(#FF0000);
      strokeWeight(1);
      rect(this.position.x , this.position.y, this.size.x, this.size.y);
    }
  }
}

