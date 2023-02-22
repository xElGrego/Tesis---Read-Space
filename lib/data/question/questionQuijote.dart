import '../question_model.dart';

List<Question> getQuestionQuijote() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Cúal es el autor del libro?",
    [
      Answer("Juan León Mera", false),
      Answer("Miguel Riofrío ", false),
      Answer("Miguel de Cervantes", true),
      Answer("Joaquín Gallegos Lara", false),
    ],
  ));

  list.add(Question(
    "En el lecho de muerte Don Quijote hace testamento, recobrada su cordura y emite un breve consejo o petición dirigida a…",
    [
      Answer("El cura", false),
      Answer("Sancho ", false),
      Answer("Su sobrina", true),
      Answer("Dulcinea del toboso", false),
    ],
  ));

  list.add(Question(
    "¿Por qué Don Quijote se volvió loco?",
    [
      Answer("Tenía problemas mentales", false),
      Answer("Se dedico demasiado a la lectura de obras de caballería", true),
      Answer("Vivía solo y abandonado", false),
      Answer("Lo enloqueció la tristeza", false),
    ],
  ));

  list.add(Question(
    "¿Por qué Don Quijote quería ser un caballero?",
    [
      Answer("Quería tener el dominio del mundo.", false),
      Answer("Quería ayudar a los necesitados", true),
      Answer("Pensaba que así Dulcinea querría estar con él", false),
      Answer("Soñó con ser caballero", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llamaba el burro de Sancho?",
    [
      Answer("Bucéfalo ", true),
      Answer("Rucio", false),
      Answer("Babieca", false),
      Answer("Beltenebros", false),
    ],
  ));

  list.add(Question(
    "¿Cual era el sobrenombre de Don Quijote en la obra?",
    [
      Answer("Alonso Quijana", false),
      Answer("El Caballero de la Triste Figura", true),
      Answer("El Caballero del Espejo", false),
      Answer("El Buen Hidalgo", false),
    ],
  ));

  return list;
}
