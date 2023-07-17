class SegmentChain {
  private final ArrayList<Segment> segments;
  
  private SegmentChain(ArrayList<Segment> segments) {
    this.segments = segments;
  }
  
  public SegmentChain(int segmentCount, Vector displacement) {
    segments = new ArrayList<Segment>();
    Vector head = new Vector(0, 0);
    for (int i = 0; i < segmentCount; i++) {
      Vector tail = head.add(displacement); 
      segments.add(new Segment(head, tail));
      head = tail;
    }
  }
  
  public SegmentChain follow(Vector target) {
    ArrayList<Segment> displacedSegments = new ArrayList<Segment>();
    Vector currentTarget = target;
    for (Segment segment : segments) {
      Segment displacedSegment = follow(segment, currentTarget);
      displacedSegments.add(displacedSegment);
      currentTarget = displacedSegment.tail;
    }
    return new SegmentChain(displacedSegments);
  }
  
  public void draw() {
    for (Segment segment : segments) {
      segment.draw();
    }
  }
  
  private Segment follow(Segment segment, Vector target) {
    Segment trajectory = new Segment(target, segment.tail);
    float displacement = segment.length() - trajectory.length();
    Vector direction = trajectory.direction();
    Vector displacementVector = direction.scale(displacement);
    Vector newTail = segment.tail.add(displacementVector);
    return new Segment(target, newTail);
  }
}
