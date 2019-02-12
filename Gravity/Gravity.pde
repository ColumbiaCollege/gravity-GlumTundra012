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
  face = loadImage("face.jpg");
  
  //draw images by center
  imageMode(CENTER);
}

void draw() {
  //background color to black
  background(#000000);
  
  //draws the image 'face' at x,y
  image(face, width/2, position,852/4.8,100);
  
  //update speed by constant accell
  speed = speed +.1;
  
  //updates position by speed
  position = position + speed;
  
  //constant falling
  //position = position +1;
  
  //terminal velocity
  if (speed > 2) {
    speed = 2;
  }
  
  //screenwrap
  if (position > height+50) { 
    position = -50;
  }
}
