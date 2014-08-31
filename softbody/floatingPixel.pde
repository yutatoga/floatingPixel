SoftBody s1;
SoftBody s2;
ArrayList<SoftBody> list;
PImage image;
void setup() {
  size(1920, 1280);
  noStroke();
  frameRate(30);
  list = new ArrayList<SoftBody>();
  for(int i=0; i<100; i++){
    list.add(new SoftBody(random(0, displayWidth), random(0, displayHeight), random(2, 37), color(127, 255, 255, 127)));
  }
  //s2 = new SoftBody(500, displayHeight-100, 25, color(255, 127, 255, 127));
  image = loadImage("image.jpg");
}

void draw() {
  //fade background
  //fill(0, 255);
  //rect(0,0,width, height);
  
  image(image, 0, 0);
  for(int i =0; i<list.size(); i++){
    list.get(i).update();
  }
  //s1.update();
//  s2.update();
  inOrOut(list);
  println(list.size());
}

void inOrOut(ArrayList<SoftBody> listSoftBody){
  for (int i=0; i<listSoftBody.size(); i++){
    if(listSoftBody.get(i).getCenterY()+listSoftBody.get(i).getRadius() < 0){
      listSoftBody.remove(i);
    }
  }
}

