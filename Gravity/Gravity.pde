// started code w/api

float position;
float speed;

PImage face;

void setup() {
  size(1200, 700);
  position = height/2;
}

void draw() {
  background(#000000);
  imageMode(CENTER);
  face = loadImage ("face.jpg");
  image(face, position, height/2);
  //rect(0, position, width, 5);
  //speed of object
  speed = speed +.1;
  position = position + speed;
  if (speed > 20) {
    speed = 20;
  }
  if (position > height) { 
    position = 0;
  }
}
