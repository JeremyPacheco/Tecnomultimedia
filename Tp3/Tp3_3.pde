PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12;
boolean pantalla1 = true;
boolean botonPresionado = false;


void setup(){
  size(600,600);
  img1 = loadImage("img1.jpg");
  img1.resize(600, 600);
  
}

void draw(){
  background(0);
  
  // pantalla 1
  if (pantalla1) {
    background(220);
    fill(0, 255, 0);
    rect(150, 150, 300, 150);
    
  } else {
    background(0);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    image(img1, 0, 0);
    text("Nueva pantalla", width/2, height/2);
  }
}

void mousePressed() {
  if (pantalla1) {
    if (mouseX >= 150 && mouseX <= 450 && mouseY >= 150 && mouseY <= 300) {
      botonPresionado = true;
    }
  } else {
    botonPresionado = false;
  }
  
  if (botonPresionado) {
    pantalla1 = !pantalla1;
    botonPresionado = false;
  }
}
