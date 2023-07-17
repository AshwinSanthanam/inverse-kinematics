SegmentChain segmentChain;
void setup() {
  size(800, 800);
  segmentChain = new SegmentChain(100, new Vector(5, 5));
}

void draw() {
  background(0);
  stroke(255);
  segmentChain.draw();
  Vector mouse = new Vector(mouseX, mouseY);
  segmentChain = segmentChain.follow(mouse);
}
