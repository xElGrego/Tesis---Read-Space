// ignore: file_names
import '../question_model.dart';

List<Question> getQuestionCartas() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Cúal es el autor del libro?",
    [
      Answer("Juan León Mera", false),
      Answer("Miguel Riofrío ", false),
      Answer("Raine Maríe Rilke", true),
      Answer("Joaquín Gallegos Lara", false),
    ],
  ));

  list.add(Question(
    "¿En qué año se publicó la obra cartas a un joven poeta?",
    [
      Answer("1929", true),
      Answer("1839", false),
      Answer("1828 ", false),
      Answer("1932", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llama el personaje principal de la obra?",
    [
      Answer("Alfredo Baldeón", false),
      Answer("Franz Xaver Kappus", true),
      Answer("Rainer Rilke", false),
      Answer("Margarita", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el tema más importante de Cartas a un joven poeta?",
    [
      Answer("Soledad", true),
      Answer("Amor", false),
      Answer("Respeto", false),
      Answer("Humildad", false),
    ],
  ));

  list.add(Question(
    "¿Que sucede al final de la obra?",
    [
      Answer("Huésped silencioso", true),
      Answer("Verdad", false),
      Answer("Compresión humana", false),
      Answer("Sentimiento de amor", false),
    ],
  ));

  return list;
}
