static class Util {
  static boolean isInSquare(PVector position, PVector rectPosition, PVector rectSize) {
  boolean isX = rectPosition.x < position.x && position.x < rectPosition.x + rectSize.x;
  boolean isY = rectPosition.y < position.y && position.y < rectPosition.y + rectSize.y;
  return isX && isY;
  }
}
