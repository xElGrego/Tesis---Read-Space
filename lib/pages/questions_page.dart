import 'package:app_tesis/pages/question_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../data/libros_model.dart';
import '../data/question/questionEmancipada.dart';
import '../data/question_model.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({
    super.key,
  });

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  //define the datas
  /* List<Question> questionList = getQuestions(); */

  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Preguntas"),
          backgroundColor: Colors.deepPurple[400],
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: dataLibros.length,
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
          itemBuilder: (builder, index) {
            final video = dataLibros[index];
            return Card(
              child: ListTile(
                title: Text(video.title),
                subtitle: Text(video.subtitle),
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(video.img),
                ),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => QuestionPage(
                        questionList: video.listQuestion,
                        question: video,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
