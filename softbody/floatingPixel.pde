SoftBody s1;
SoftBody s2;
void setup() {
  size(640, 360);
  noStroke();
  frameRate(30);
  
  s1 = new SoftBody(10, 100, color(127, 255, 255, 127));
  s2 = new SoftBody(100, 50, color(255, 127, 255, 127));
}

void draw() {
  //fade background
  fill(0, 255);
  rect(0,0,width, height);
  
  s1.update();
  s2.update();
}




