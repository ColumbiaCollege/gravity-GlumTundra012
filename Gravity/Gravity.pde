// started code w/api

//declare and initializes variables
float position = 0;
float speed = 0;

//declares an image type object
PImage face;

void setup() {
  size(1200, 700);
  position = height/2;
  face = loadImage ("face.jpg");
}

void draw() {
  background(#000000);
  imageMode(CENTER);
  
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
