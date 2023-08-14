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
  textos[9] = "Impulsado por su descontento y su deseo de escapar de la sociedad superficial, Holden decide huir de su casa y pasar una última noche en la ciudad antes de desaparecer para siempre. Se adentra en la ciudad caótica y experimenta una mezcla de emociones, desde la excitación hasta la tristeza, mientras busca una conexión auténtica con el mundo que lo rodea.¿Cual sera su ultima desicion?";
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

  textSize(16);
  textAlign(LEFT);

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
  
  
  if (estado == 2 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 3 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 4 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 5 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 6 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 7 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 8 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 9 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 10 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 11 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 12 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 13 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
  if (estado < c - 14 && !botonPresionado) {
    fill(255);
    rect(250, height / 2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Siguiente", 265, height / 2 + 180);
  }
}

void mouseClicked() {
  if (estado < c - 1 && mouseX >= 250 && mouseX <= 350 && mouseY >= height / 2 + 150 && mouseY <= height / 2 + 200) {
    estado++;
    botonPresionado = true;
  }
  else if (estado == 12 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    estado = 0;
  }
}
