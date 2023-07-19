
void mouseClicked() {
  // Cambiar a la siguiente pantalla al hacer clic en el botón
  // TITULO 
  if (pantalla == 0 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 1;
  }
  // CAP 1-8:
  else if (pantalla == 1 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 2;
  }
  else if (pantalla == 2 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 3;
  }
  else if (pantalla == 3 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 4;
  }
  else if (pantalla == 4 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 5;
  }
  else if (pantalla == 5 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 6;
  }
  else if (pantalla == 6 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 7;
  }
  else if (pantalla == 7 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 8;
  }
  else if (pantalla == 8 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 9;
  }
  
  //CAP 9 DESICION:
  else if (pantalla == 9) {
    // Botón izquierdo
    if (mouseX >= 150 && mouseX <= 250 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
      pantalla = 11;
    }
    // Botón central
    else if (mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
      pantalla = 10;  
    }
    // Botón derecho
    else if (mouseX >= 350 && mouseX <= 450 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
      pantalla = 12;
    }
  } else if (pantalla == 10 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 13;
  }
  else if (pantalla == 13 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 0;
  }
  else if (pantalla == 11 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 13;
  }
  else if (pantalla == 12 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 0;
  }
}  
