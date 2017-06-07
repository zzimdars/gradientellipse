

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawEllipse();
}

void drawEllipse() {
  translate(width/2, height/2);
  rotate(-PI/6);
  stroke(0);
  strokeWeight(5);
  float rad = 100;
  float x;
  float y;

  for (float i = 0; i < TWO_PI; i += PI/16) {
    color r = color(255,0,0);
    color b = color (0,0,255);
    color a = color(0);
    if(i < PI) {
      float tmp = map(i, 0, PI, 0, 1);
      a = lerpColor(r,b,tmp);
    } else {
      float tmp = map(i, PI, TWO_PI, 0, 1);
      a = lerpColor(b,r,tmp);
    }
    
    stroke(a);
    
    x = rad*2 * cos(i);
    y = rad * sin(i);
    point(x,y);
  }

}