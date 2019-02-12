// started code w/api

//declare and initializes variables
float position = 0;
float speed = 0;

//declares an image type object
PImage face;

void setup() {
  //window size
  size(1200, 700);
  
  //set start position
  position = height/2;
  
  //initialize image
  face = loadImage ("face.jpg");
  
  //draw images by center
  imageMode(CENTER);
}

void draw() {
  //background color to black
  background(#000000);
  
  //draws the image 'face' at x,y
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
