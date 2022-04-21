void setup(){
  size(400,400);
}
void draw(){
  //fondo//
  background(255);
  fill(255,137,0);
  rect(10,10,300,300);
  fill(255,0,0);
  rect(200,100,200,275);
  fill(255,255,0);
  rect(50,150,200,200);
  fill(127,255,0);
  rect(200,0,200,200);
  fill(0,0,255);
  rect(0,200,200,200);
  //forma cara//
  fill(195,100,10);
  rect(70, 70, 260,260,150);
  //ojos//
  //derecho//
  fill(255);
  ellipse(130,160,75,60);
  fill(155,70,0);
  ellipse(130,160,45,45);
  fill(0);
  ellipse(130,160,35,35);
  fill(255);
  ellipse(140,150,15,10);
  //izquierdo//
  fill(255);
  ellipse(260,160,75,60);
  fill(155,70,0);
  ellipse(260,160,45,45);
  fill(0);
  ellipse(260,160,35,35);
  fill(255);
  ellipse(270,150,15,10);
  //nariz//
  fill(145,70,0);
  triangle(200,185,175,200,200,235);
  //boca//
  fill(125,70,0);
  rect(150,260,80,15,25);
  //cabello//
  fill(0);
  ellipse(100,90,60,60);
  ellipse(260,70,60,60);
  ellipse(200,90,60,60);
  ellipse(160,70,60,60);
  ellipse(300,90,60,60);
  
  ellipse(110,70,60,60);
  ellipse(250,90,60,60);
  ellipse(210,70,60,60);
  ellipse(150,90,60,60);
  ellipse(310,70,60,60);
  
  //Nombre//
  textSize(50);
  fill(255);
  text("Jeremy",20,370);
}
