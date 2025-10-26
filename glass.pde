class Glass {
  float transparency;

  Glass() {
    transparency = 150.0;
  }

  void draw() {
    // Glass
    fill(#FFFFFF, this.transparency);
    rect(0, 0, width, height);
    // Frame
    noFill();
    stroke(#000000);
    strokeWeight(20);
    rect(0, 0, width, height);
  }
}
