// ignore: file_names
import '../question_model.dart';

List<Question> getQuestionCruces() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Qué evento se histórico se desarrolla en la novela?",
    [
      Answer("La guerrilla", false),
      Answer("La moda", false),
      Answer("Asesinato de trabajadores en 1922", true),
      Answer("Asesinato de madres en 1920", false),
    ],
  ));

  list.add(Question(
    "¿En qué ciudad del Ecuador se dió el primer levantamiento obrero?",
    [
      Answer("Quito", false),
      Answer("Guayaquil", true),
      Answer("Ambato ", false),
      Answer("Cuenca", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el autor del libro?",
    [
      Answer("Jorge Icaza", false),
      Answer("Miguel Riofrío", false),
      Answer("Dolores Veintimilla", false),
      Answer("Joaquín Gallegos Lara", true),
    ],
  ));

  list.add(Question(
    "¿En qué lugar de Guayaquil se depositaron los cuerpos de los fallecidos?",
    [
      Answer("Malecón", false),
      Answer("Centro true", false),
      Answer("Río Guayas", true),
      Answer("Biblioteca Municipal", false),
    ],
  ));

  list.add(Question(
    "¿En qué año se dió el primero levantamiento obrero en Ecuador?",
    [
      Answer("1922", true),
      Answer("1822", false),
      Answer("1832", false),
      Answer("1932", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llama el personaje principal de la obra?",
    [
      Answer("Alfredo Baldeón", false),
      Answer("Alonso Cortés", true),
      Answer("El loco Becerra", false),
      Answer("Margarita", false),
    ],
  ));

  return list;
}
