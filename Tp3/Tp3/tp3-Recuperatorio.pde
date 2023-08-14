int estado;
int c = 14;
PImage[] dibujo = new PImage[c];
String[] textos = new String[c];

int X = 30; // Posición inicial (X)
int Y = 100; // Posición inicial (Y)
int altura = 25; // Altura de línea

boolean botonPresionado = false;

void setup() {
  size(600, 600);
  estado = 0;

  textos = new String[13];
  textos[1] = "Holden Caulfield, un adolescente de dieciséis años, es expulsado de su escuela preparatoria por suspender cuatro asignaturas, por lo que ya no va a volver y se encuentra abrumado por la sensación de alienación y desencanto. Con una mezcla de resentimiento y desilusión, se despide de sus compañeros sin sentir verdadera conexión con ninguno de ellos. Holden se aleja de la escuela, cargado de una profunda melancolía que parece acompañarlo a todas partes.";
  textos[2] = "Holden visita al Sr. Spencer, su antiguo profesor, quien lo recibe en su hogar. El Sr. Spencer intenta impartirle sabiduría y consejos sobre la importancia de enfrentar los desafíos de la vida, pero sus palabras suenan a una mezcla de compasión y resignación. Holden, aunque agradece el gesto, no logra encontrar consuelo en las palabras del profesor y se marcha sintiéndose más perdido que nunca.";
  textos[3] = "Holden se sumerge en la bulliciosa ciudad de Nueva York, buscando refugio y distracción en la vida nocturna de la metrópolis. Experimenta encuentros casuales con antiguos conocidos, pero ninguno de ellos parece satisfacer su anhelo de autenticidad y conexión genuina. A medida que la noche avanza, Holden se adentra en ambientes oscuros y decadentes, encontrándose con la frivolidad y la hipocresía de aquellos que lo rodean.";
  textos[4] = "En el Museo de Historia Natural, Holden se encuentra con su hermana Phoebe, quien es un ancla emocional en su vida turbulenta. Los dos pasean por las exhibiciones, y Holden observa cómo Phoebe encuentra alegría y fascinación en las cosas simples de la vida. Tienen una conversación sincera y conmovedora, donde Holden expresa su deseo de proteger a Phoebe y mantenerla a salvo de la corrupción del mundo adulto.";
  textos[5] = "Holden, en un estado de soledad y desesperación, decide contactar a una prostituta. Aunque inicialmente busca compañía física, cuando la prostituta llega a su habitación de hotel, su conversación se vuelve incómoda y Holden se da cuenta de que anhela una conexión emocional genuina en lugar de un encuentro superficial. Decide no seguir adelante con el acto y le paga a la prostituta sin hacer nada.";
  textos[6] = "Holden se encuentra con una antigua amiga, Sally Hayes, y decide invitarla a una obra de teatro y a una escapada romántica. Sin embargo, durante la cita, una discusión acalorada surge entre ellos, revelando la inmadurez y la incapacidad de Holden para manejar sus propias emociones. La relación se rompe y Holden se siente cada vez más aislado y frustrado.";
  textos[7] = "Desesperado por encontrar consuelo, Holden visita a la Sra. Antolini, una exprofesora suya que siempre ha mostrado interés por su bienestar. A pesar de las buenas intenciones de la Sra. Antolini, Holden se siente incómodo en su presencia y percibe insinuaciones inapropiadas por parte de la mujer. Incapaz de lidiar con estas sensaciones, decide abandonar el lugar en medio de la noche y continúa su búsqueda de significado y comprensión.";
  textos[8] = "Holden se reúne nuevamente con su hermana Phoebe, quien se convierte en su confidente y apoyo emocional. Tienen una discusión franca sobre sus planes futuros y la visión pesimista de Holden sobre el mundo. Phoebe muestra una sabiduría más allá de sus años y le insta a encontrar su lugar en el mundo, recordándole que debe cuidarse a sí mismo y no rendirse ante la desesperanza.";
  textos[9] = "Impulsado por su descontento y su deseo de escapar de la sociedad superficial, Holden decide huir de su casa y pasar una última noche en la ciudad antes de desaparecer para siempre. Se adentra en la ciudad caótica y experimenta una mezcla de emociones, desde la excitación hasta la tristeza, mientras busca una conexión auténtica con el mundo que lo rodea.¿Cual sera su ultima desicion? A) Regresar y ver que sucede. Siguiente) Seguir hasta que le deparara la vida. C) Huir de todo.";
  textos[10] = "La historia culmina con Holden en un hospital psiquiátrico, donde reflexiona sobre sus experiencias. Aunque sigue sintiendo nostalgia y desencanto, muestra un destello de esperanza y madurez al reconocer que la pureza y la autenticidad que busca pueden no estar tan lejos como piensa. La novela termina con la idea de que Holden está en un proceso de curación y aprendizaje, dejando abierta la posibilidad de que encuentre un lugar en el mundo y recupere su equilibrio emocional.";
  textos[11] = "Holden decide regresar a casa, a su hogar despues de todo y empezar de nuevo pero en otro colegio con talvez algo de suerte encajar el mismo en este ambiente y asi ver si puede llegar a ser feliz aunque con ese sentimento presente que no es satisfactorio.";
  textos[12] = "Holden decide irse a un lugar lejano fuera de lo conocido, donde no pueda ser reconocido, empezar desde cero pero lejos de todo de cualquier rasto de lo que fue el, pero tambien de las pesonas que conocio pero que aun recuerda a pesar de todo y saber si asi por una sola vez buscaba lo que tanto soñaba, esa conexion esa sensacion, esa emocion que deseaba. ";
  // ... Agregar los textos para los otros estados
  
  // Cargar imágenes
  for (int i = 0; i < c; i++) {
    dibujo[i] = loadImage("dibujo" + i + ".jpg");
    dibujo[i].resize(width, height);
  }
}

 void draw() {
  background(255); // Limpiar la pantalla

  textSize(20);
  textAlign(LEFT);
  fill(255,0,0);

  if (estado < c) {
    image(dibujo[estado], 0, 0);
    

    if (estado >= 1 && estado <= 12) {
      String[] palabras = textos[estado].split(" ");
      X = 30; // Reiniciar posición en X
      Y = 100; // Reiniciar posición en Y
      
      for (String palabra : palabras) {
        float tex = textWidth(palabra + " ");
        // Limite del texto a la pantalla
        if (X + tex > width) {
          X = 30; // Reiniciar en la siguiente línea
          Y += altura;
        }
        text(palabra + " ", X, Y);
        X += tex;
      }
    }
  }

  // Dibujar el botón y verificar si ha sido presionado
  if (estado < c - 1 && !botonPresionado) {
    textSize(40);
    fill(255);
    text("El Guardian entre el centeno", 40, 90);
    textSize(30);
    text(" de: J.D. Salinger", 60, 140);
    
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado == 9) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);

    fill(255);
    rect(150, height / 2 + 150, 100, 50);
    
    fill(255);
    rect(350, height / 2 + 150, 100, 50);
    
    fill(0);
    textSize(20);
    text("B", 290, height / 2 + 180);
    text("A", 190, height / 2 + 180);
    text("C", 390, height / 2 + 180);
  }
  if (estado < c - 1) {
      // Mostrar el botón "Siguiente" en las pantallas del estado 0 al 11
      fill(255);
      rect(250, height / 2 + 150, 100, 50);
      fill(0);
      textSize(20);
      text("Siguiente", 265, height / 2 + 180);
    }
    else {
      // Última pantalla: mostrar botón de reinicio
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("Creditos:", width/2, 100);
    text("Nombre: Jeremy Pacheco 88250/3", width/2, 200);
    text("Fin y Gracias", width/2, height/2);
    rect(250, height/2 + 150, 100, 50);
    textSize(30);
    text("¿Desea Re-Reiniciar?", width/2, 420);
      fill(255);
      rect(250, height / 2 + 150, 100, 50);
      fill(0);
      textSize(18);
      text("Reiniciar", 305, height / 2 + 180);
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

void mouseClicked() {
  if (estado < c - 1 && mouseX >= 250 && mouseX <= 350 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
    estado++;
    botonPresionado = true;
  }
  else if (estado == c - 1 && mouseX >= 250 && mouseX <= 350 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
    estado = 0; // Reiniciar al estado inicial
    botonPresionado = false;
  }
  else if (estado == 9) {
    if (mouseX >= 150 && mouseX <= 250 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
      estado = 11; // Ir al estado 11
      botonPresionado = true;
    } else if (mouseX >= 350 && mouseX <= 450 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
      estado = 12; // Ir al estado 12
      botonPresionado = true;
    }
  }
  else if (estado == 11) {
    if (mouseX >= 250 && mouseX <= 350 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
      estado = c - 1; // Ir a la pantalla final
      botonPresionado = true;
    }
  }
}

