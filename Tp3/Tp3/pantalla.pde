void draw(){
  background(0);
  
  // pantalla 1 Titulo
  if (pantalla == 0) {
    background(0);
    image(dibujo[1], 0, 0);
    textFont(createFont("Times new Roman",49));
    fill(255);
    textSize(40);
    textAlign(LEFT);
    text("El Guardian Entre El Centeno", 70, 70);
    textSize(30);
    textAlign(LEFT);
    text(" de: J.D. Salinger", 30, 140);
    text("Pulsa el boton para empezar", 120, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  } 
  //CAPITULOS: 1 - 12
  else if (pantalla == 1){
    background(0);
    image(dibujo[2], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 1", 10, 60);
    
    // Centrar y mostrar el texto
    String[] palabras = palabra[1].split(" ");
    int X = 10; // Posición inicial (X)
    int Y = 100; // Posición inicial (Y)
    int altura = 25; // Altura de línea
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      // Limite del texto a la pantalla
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    
    fill(255);
    text("Siguiente capitulo", 190, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }else if (pantalla == 2){
    background(0);
    image(dibujo[3], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 2", 10, 60);
    String[] palabras = palabra[2].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 3){
    background(255);
    image(dibujo[4], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 3", 10, 60);
    String[] palabras = palabra[3].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 4){
    background(0);
    image(dibujo[5], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 4", 10, 60);
    String[] palabras = palabra[4].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 5){
    background(0);
    image(dibujo[6], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 5", 10, 60);
    String[] palabras = palabra[5].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 6){
    background(0);
    image(dibujo[7], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 6", 10, 60);
    String[] palabras = palabra[6].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420); 
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 7){
    background(0);
    image(dibujo[8], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 7", 10, 60);
    String[] palabras = palabra[7].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420); 
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  else if (pantalla == 8){
    background(0);
    image(dibujo[9], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 8", 10, 60);
    String[] palabras = palabra[8].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    text("Siguiente capitulo", 190, 420); 
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("siguiente",265,480);
  }
  //cap 9 (desicion)
  else if (pantalla == 9){
    background(0);
    image(dibujo[10], 0, 0);
    fill(255);
    textSize(25);
    textAlign(LEFT);
    text("CAPITULO 9", 10, 60);
    text("A. Holden decide regresar a casa", 10,310);
    text("B. Holden decide afrontar la realidad",10,350);
    text("C. Holden decide irse lejos de todo",10,390);
    String[] palabras = palabra[9].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    text("Siguiente capitulo", 210, 435); 
    fill(0);
    textSize(20);
    
    text("siguiente",265,480);
    //CAP 10
    //Opcion B CORRECTA (ORIGINAL DEL CUENTO)
    fill(255);
    rect(250, height/2 + 150, 100, 50);
    
    //A
    fill(255);
    rect(150, height/2 + 150, 100, 50);
    
    //C
    fill(255);
    rect(350, height/2 + 150, 100, 50);
    
    fill(0);
    textSize(20);
    text("B",290,480);
    text("A",190,480);
    text("C",390,480);
    
  }
  //Final original
  else if (pantalla == 10){
    background(0);
    image(dibujo[11], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 10 Final (B)", 10, 60);
    String[] palabras = palabra[10].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Fin",265,480);
  }
  //Final A
  else if (pantalla == 11){
    background(0);
    image(dibujo[12], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 10 (A)", 10, 60);
    String[] palabras = palabra[11].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Terminar",265,480);
  }
  //Final C
  else if (pantalla == 12){
    background(0);
    image(dibujo[13], 0, 0);
    fill(255);
    textSize(30);
    textAlign(LEFT);
    text("CAPITULO 10 (C)", 10, 60);
    String[] palabras = palabra[12].split(" ");
    int X = 10;
    int Y = 100;
    int altura = 25;
    for (String palabra : palabras) {
      float tex = textWidth(palabra + " ");
      if (X + tex > width) {
        X = 10; // Reiniciar en la siguiente línea
        Y += altura;
      }
      text(palabra + " ", X, Y);
      X += tex;
    }
    fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Terminar",265,480);
  }
  //Creditos
  else if (pantalla == 13){
    background(0);
    image(dibujo[14], 0, 0);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("Creditos:", width/2, 100);
    text("Nombre: Jeremy Pacheco 88250/3", width/2, 200);
    text("Fin y Gracias", width/2, height/2);
    rect(250, height/2 + 150, 100, 50);
    textSize(30);
    text("¿Desea Re-Reiniciar?", width/2, 420);
    fill(0);
    textSize(20);
    text("Aceptar",300,480);
    
    fill(0,12);
    rect(0, 0, width, height);
    float r = random(50, 100);
    float g = random(50, 100);
    float b = random(100, 155);
    fill(r, g, b, 150);
    float d = random(120);
    ellipse(random(width), random(height), d, d);
  }
}
