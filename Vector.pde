class Vector {
  public final float x;
  public final float y;
  
  public Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public float magnitude() {
    return sqrt(x * x + y * y);
  }
  
  public Vector direction() {
    float magnitude = magnitude();
    return new Vector(x / magnitude, y / magnitude);
  }
  
  public Vector subtract(Vector other) {
    return new Vector(other.x - this.x, other.y - this.y);
  }
  
  public Vector add(Vector other) {
    return new Vector(other.x + this.x, other.y + this.y);
  }
  
  public Vector scale(float magnitude) {
    return new Vector(x * magnitude, y * magnitude);
  }
  
  public String toString() {
    return "(" + x + ", " + y + ")";
  }
}
