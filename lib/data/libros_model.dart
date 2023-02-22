import 'package:app_tesis/data/question/questionCartas.dart';
import 'package:app_tesis/data/question/questionCruces.dart';
import 'package:app_tesis/data/question/questionCumanda.dart';
import 'package:app_tesis/data/question/questionEmancipada.dart';
import 'package:app_tesis/data/question/questionQuijote.dart';
import 'package:app_tesis/data/question_model.dart';

class LibrosModel {
  String title;
  String subtitle;
  String idApp;
  String img;
  List<Question> listQuestion;
  LibrosModel({
    required this.title,
    required this.subtitle,
    required this.idApp,
    required this.img,
    required this.listQuestion,
  });
}

List<LibrosModel> dataLibros = [
  LibrosModel(
    title: "Cartas a  un  joven poeta",
    subtitle: "Raine Maríe Rilke",
    idApp: "7138",
    img: "assets/books/cartas_de_poeta.jpg",
    listQuestion: getQuestionCartas(),
  ),
  LibrosModel(
    title: "Las cruces sobre el agua",
    subtitle: "Joaquín Gallegos Lara",
    idApp: "15204",
    img: "assets/books/cruces_sobre_agua.jpg",
    listQuestion: getQuestionCruces(),
  ),
  LibrosModel(
    title: "Cumandá",
    subtitle: "Juan León Mera",
    idApp: "4841",
    img: "assets/books/cumanda.jpg",
    listQuestion: getQuestionCumanda(),
  ),
  LibrosModel(
    title: "Don quijote de la mancha",
    subtitle: "Miguel de Cervantes",
    idApp: "2",
    img: "assets/books/don_quijote.jpg",
    listQuestion: getQuestionQuijote(),
  ),
  LibrosModel(
    title: "La emancipada",
    subtitle: "Miguel Riofrío",
    idApp: "8897",
    img: "assets/books/emancipada.jpg",
    listQuestion: getQuestionEmancipada(),
  )
];
