
//Com5
//Nombre: Jeremy Alejandro Pacheco Tenorio Legajo: 88250/3
//https://youtu.be/mi-poffGVCU

String [] palabra;
PImage[] dibujo;
int pantalla = 0;

void setup(){
  size(600,600);
  
  //IMAGENES//
  //Titulo//
  dibujo = new PImage[15];
  dibujo[1] = loadImage("dibujo0.jpg");
  
  //cap1
  dibujo[2] = loadImage("dibujo1.jpg");
  dibujo[2].resize(700,600);
  //cap2
  dibujo[3] = loadImage("dibujo2.jpg");
  dibujo[3].resize(600,600);
  //cap3
  dibujo[4] = loadImage("dibujo3.jpg");
  dibujo[4].resize(600,600);
  //cap4
  dibujo[5] = loadImage("dibujo4.png");
  dibujo[5].resize(600,600);
  //cap5
  dibujo[6] = loadImage("dibujo5.jpg");
  dibujo[6].resize(600,600);
  //cap6
  dibujo[7] = loadImage("dibujo6.jpg");
  dibujo[7].resize(600,600);
  //cap7
  dibujo[8] = loadImage("dibujo7.jpg");
  dibujo[8].resize(600,600);
  
  //cap8
  dibujo[9] = loadImage("dibujo8.jpg");
  dibujo[9].resize(600,600);
  //cap9
  //pantalla interactiva tomar desicion
  dibujo[10] = loadImage("dibujo9.jpg");
  dibujo[10].resize(600,600);
 
  //cap10
  //ruta original//
  dibujo[11] = loadImage("dibujo10.jpg");
  dibujo[11].resize(600,600);
  //capB
  //ruta alternativa A
  dibujo[12] = loadImage("dibujo11.jpg");
  dibujo[12].resize(600,600);
  //capA
  //ruta alternativa b
  dibujo[13] = loadImage("dibujo12.jpg");
  dibujo[13].resize(600,600);
  
  
  //pantalla final (creditos)
  dibujo[14] = loadImage("dibujo13.jpg");
  dibujo[14].resize(600,600);
  
  
  // Cuento
  palabra = new String[13];
  palabra[1] = "Holden Caulfield, un adolescente de dieciséis años, es expulsado de su escuela preparatoria por suspender cuatro asignaturas, por lo que ya no va a volver y se encuentra abrumado por la sensación de alienación y desencanto. Con una mezcla de resentimiento y desilusión, se despide de sus compañeros sin sentir verdadera conexión con ninguno de ellos. Holden se aleja de la escuela, cargado de una profunda melancolía que parece acompañarlo a todas partes.";
  palabra[2] = "Holden visita al Sr. Spencer, su antiguo profesor, quien lo recibe en su hogar. El Sr. Spencer intenta impartirle sabiduría y consejos sobre la importancia de enfrentar los desafíos de la vida, pero sus palabras suenan a una mezcla de compasión y resignación. Holden, aunque agradece el gesto, no logra encontrar consuelo en las palabras del profesor y se marcha sintiéndose más perdido que nunca.";
  palabra[3] = "Holden se sumerge en la bulliciosa ciudad de Nueva York, buscando refugio y distracción en la vida nocturna de la metrópolis. Experimenta encuentros casuales con antiguos conocidos, pero ninguno de ellos parece satisfacer su anhelo de autenticidad y conexión genuina. A medida que la noche avanza, Holden se adentra en ambientes oscuros y decadentes, encontrándose con la frivolidad y la hipocresía de aquellos que lo rodean.";
  palabra[4] = "En el Museo de Historia Natural, Holden se encuentra con su hermana Phoebe, quien es un ancla emocional en su vida turbulenta. Los dos pasean por las exhibiciones, y Holden observa cómo Phoebe encuentra alegría y fascinación en las cosas simples de la vida. Tienen una conversación sincera y conmovedora, donde Holden expresa su deseo de proteger a Phoebe y mantenerla a salvo de la corrupción del mundo adulto.";
  palabra[5] = "Holden, en un estado de soledad y desesperación, decide contactar a una prostituta. Aunque inicialmente busca compañía física, cuando la prostituta llega a su habitación de hotel, su conversación se vuelve incómoda y Holden se da cuenta de que anhela una conexión emocional genuina en lugar de un encuentro superficial. Decide no seguir adelante con el acto y le paga a la prostituta sin hacer nada.";
  palabra[6] = "Holden se encuentra con una antigua amiga, Sally Hayes, y decide invitarla a una obra de teatro y a una escapada romántica. Sin embargo, durante la cita, una discusión acalorada surge entre ellos, revelando la inmadurez y la incapacidad de Holden para manejar sus propias emociones. La relación se rompe y Holden se siente cada vez más aislado y frustrado.";
  palabra[7] = "Desesperado por encontrar consuelo, Holden visita a la Sra. Antolini, una exprofesora suya que siempre ha mostrado interés por su bienestar. A pesar de las buenas intenciones de la Sra. Antolini, Holden se siente incómodo en su presencia y percibe insinuaciones inapropiadas por parte de la mujer. Incapaz de lidiar con estas sensaciones, decide abandonar el lugar en medio de la noche y continúa su búsqueda de significado y comprensión.";
  palabra[8] = "Holden se reúne nuevamente con su hermana Phoebe, quien se convierte en su confidente y apoyo emocional. Tienen una discusión franca sobre sus planes futuros y la visión pesimista de Holden sobre el mundo. Phoebe muestra una sabiduría más allá de sus años y le insta a encontrar su lugar en el mundo, recordándole que debe cuidarse a sí mismo y no rendirse ante la desesperanza.";
  palabra[9] = "Impulsado por su descontento y su deseo de escapar de la sociedad superficial, Holden decide huir de su casa y pasar una última noche en la ciudad antes de desaparecer para siempre. Se adentra en la ciudad caótica y experimenta una mezcla de emociones, desde la excitación hasta la tristeza, mientras busca una conexión auténtica con el mundo que lo rodea.¿Cual sera su ultima desicion?";
  palabra[10] = "La historia culmina con Holden en un hospital psiquiátrico, donde reflexiona sobre sus experiencias. Aunque sigue sintiendo nostalgia y desencanto, muestra un destello de esperanza y madurez al reconocer que la pureza y la autenticidad que busca pueden no estar tan lejos como piensa. La novela termina con la idea de que Holden está en un proceso de curación y aprendizaje, dejando abierta la posibilidad de que encuentre un lugar en el mundo y recupere su equilibrio emocional.";
  palabra[11] = "Holden decide regresar a casa, a su hogar despues de todo y empezar de nuevo pero en otro colegio con talvez algo de suerte encajar el mismo en este ambiente y asi ver si puede llegar a ser feliz aunque con ese sentimento presente que no es satisfactorio.";
  palabra[12] = "Holden decide irse a un lugar lejano fuera de lo conocido, donde no pueda ser reconocido, empezar desde cero pero lejos de todo de cualquier rasto de lo que fue el, pero tambien de las pesonas que conocio pero que aun recuerda a pesar de todo y saber si asi por una sola vez buscaba lo que tanto soñaba, esa conexion esa sensacion, esa emocion que deseaba. ";  
}
