void setup() {
  background(0);
  size(600, 600);
  sierpinski(0, 0, 600, 600); 
}

void mousePressed() {
  background(0);
  sierpinski(0, 0, 600, 600); 
}

void draw(){

}

public void sierpinski(int x, int y, int h, int w){
  if (h < 1 || w < 1) {
    return;
  }
  
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  ellipse(x + w/2, y + h/2, w, h); 

  sierpinski(x, y + h/4, h/2, w/2); 
  sierpinski(x + w/2, y + h/4, h/2, w/2); 
}
