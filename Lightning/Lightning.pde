int startX;
int startY;
int endX;
int endY;
PImage cloud;

void setup() {
  size(800, 500);
  cloud = loadImage("cloud.png");
  startX = 400;
  startY = 0;
  endX = 0;
  endY = 0;
  background(0, 0, 0);
  strokeWeight(2);
  cloud.resize(300,160);
}
void draw() {
  image(cloud,260,-50);
  //stroke(random(0, 250), random(0, 250), random(0, 250), (int) Math.random() * 10);
  stroke(255,255,0);
  while (endY <= 500) {
    endX = startX + (int)( -10 + Math.random() * 20);
    endY = startY + (int)(Math.random() * 10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() {
  clear();
  startX = 400;
  startY = 0;
  endX = 0;
  endY = 0;
}
