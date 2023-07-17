class Segment {
  private final Vector head;
  private final Vector tail;
  
  public Segment(Vector head, Vector tail) {
    this.head = head;
    this.tail = tail;
  }
  
  public void draw() {
    line(tail.x, tail.y, head.x, head.y);
  }
  
  public float length() {
    return head.subtract(tail).magnitude();
  }
  
  public Vector direction() {
    return head.subtract(tail).direction();
  }
  
  public String toString() {
    return "{ head: " + head + ", tail: " + tail + " }";
  }
}
