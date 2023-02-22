import '../question_model.dart';

List<Question> getQuestionEmancipada() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Cúal es el autor del libro?",
    [
      Answer("Jorge Icaza", false),
      Answer("Dolores Veintimilla", false),
      Answer("Miguel Riofrío", true),
      Answer("José de la cuadra", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llama la protagonista de la novela?",
    [
      Answer("Rosaura", true),
      Answer("Aurora", false),
      Answer("Isaura ", false),
      Answer("Laura", false),
    ],
  ));

  list.add(Question(
    "¿Que hace Rosaura al final de su boda?",
    [
      Answer("Se va a vivir con su esposo", false),
      Answer("Va a la cárcel", false),
      Answer("Se suicida", false),
      Answer("Huye fuera de la ciudad", true),
    ],
  ));

  list.add(Question(
    "¿Que sucede con Eduardo?",
    [
      Answer("Se convierte en fraile", true),
      Answer("Muere por enfermedad", false),
      Answer("Va a la cárcel", false),
      Answer("Ninguna de las opciones", false),
    ],
  ));

  list.add(Question(
    "¿Que sucede al final de la obra?",
    [
      Answer("Rosaura se suicida", true),
      Answer("Eduardo asesina al padre de Rosaura", false),
      Answer("Rosaura asesina a Eduardo", false),
      Answer("Eduardo se suicida", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llamaba el padre de Rosaura?",
    [
      Answer("Pedro", true),
      Answer("Anselmo", false),
      Answer("Eduardo", false),
      Answer("Roberto", false),
    ],
  ));

  return list;
}
