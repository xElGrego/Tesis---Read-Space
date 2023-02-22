import '../question_model.dart';

List<Question> getQuestionCumanda() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Por qué atacaron los indios la hacienda de los Orozco?",
    [
      Answer("Envidia", false),
      Answer("Venganza", true),
      Answer("Sadismo", false),
      Answer("Racismo", false),
    ],
  ));

  list.add(Question(
    "¿Al final que ocurre con Carlos y Cumandá?",
    [
      Answer("Se casan", false),
      Answer("Huyen ", false),
      Answer("Huyen", false),
      Answer("Mueren los 2", true),
    ],
  ));

  list.add(Question(
    "¿Para qué se fue Domingo con su hijo al oriente?",
    [
      Answer("Pasear", false),
      Answer("Olvidar", false),
      Answer("Evangelizar", true),
      Answer("Vengarse", false),
    ],
  ));

  list.add(Question(
    "¿Cómo se llamaba el indio que se revelo contra los blancos?",
    [
      Answer("Tapón", false),
      Answer("Tiban", false),
      Answer("Tipan", false),
      Answer("Tubon", true),
    ],
  ));

  list.add(Question(
    "¿Con quién obligan a casar a Cumandá?",
    [
      Answer("Yahuarmaqui", true),
      Answer("Yahuarcocha", false),
      Answer("Guiracocha", false),
      Answer("Tongana", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el autor del libro?",
    [
      Answer("Juan León Mera", true),
      Answer("Miguel Riofrío", false),
      Answer("Dolores Veintimilla", false),
      Answer("Joaquín Gallegos Lara", false),
    ],
  ));

  return list;
}
