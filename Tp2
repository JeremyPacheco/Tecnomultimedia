float are;
int je;
void setup(){
  size(600, 600);
  noStroke();

}


void draw(){
   float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0, 255);
    background(mx, 0, my);

  float f = 75;
  int v = 100;
  
  if(je == 1){
  translate(width/2, height/2);
  for (float a=0; a<360; a+=22.5) {
    rotate(radians(a));
    pushMatrix();
    for (int i=0; i<v; i++) {
      scale(0.95);
      rotate(radians(are));
      ellipse(mouseX, mouseY, f, f);
      fill(127, 0, 255);
    }
    popMatrix();
  }
  }
  
  
  if(je == 2){
    translate(width/2, height/2);
  for (float a=0; a<360; a+=22.5) {
    rotate(radians(a));
    pushMatrix();
    for (int i=0; i<v; i++) {
      scale(0.95);
      rotate(radians(are));
      rect(mouseX, mouseY, f, f);
      fill(0, 0, 255);
    }
    popMatrix();
    
    pushMatrix();
    for (int i=0; i<v; i++) {
      scale(0.95);
      rotate(-radians(are));
      rect(mouseX, mouseY, f, f);
      fill(0, 127, 255);
    }
    popMatrix();
  }
  }
    are+=0.03;
}

void mousePressed(){
  je = je +1;
}
