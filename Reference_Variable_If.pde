// add your Reference_Variable_If code here
//variable(s)
float circleX;
float circleY;
float circleB;
float speed;

void setup() {
  size(500, 500);
  background(150);
  circleX=0;
  circleB=500;
  speed=-1;
}


void draw() {
  noStroke();
  fill(random(1, 255), random(1, 255), random(1, 255));
  //horizontal from left
  ellipse(circleX, 100, 100, 100);
  // circleX=circleX+speed;
  circleY=circleY+speed;
  circleX=circleX+speed;
  circleB=circleB-speed;
  fill(random(1, 255), random(1, 255), random(1, 255));
  //top left
  ellipse(100, circleY, 100, 100);
  fill(random(1, 255), random(1, 255), random(1, 255));
  //top right 
  ellipse(400, circleY, 100, 100);
  fill(random(1, 255), random(1, 255), random(1, 255));
  //horizontal from right
  ellipse(circleB, 100, 100, 100);
  fill(random(1, 255), random(1, 255), random(1, 255));
  //from bottom
  ellipse(250, circleB, 100, 100);


  if (circleY>500) {
    speed=-100;
  }

  if (circleB>500) {
    speed=+100;
  } 

  if (circleX>500) {
    speed=-100;
  }
}
