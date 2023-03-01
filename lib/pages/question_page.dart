import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../data/libros_model.dart';
import '../data/question_model.dart';

class QuestionPage extends StatefulWidget {
  final List<Question> questionList;
  final LibrosModel question;
  const QuestionPage({
    super.key,
    required this.questionList,
    required this.question,
  });

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 4.h),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                widget.question.img,
                height: 24.h,
              ),
            ),
            _questionWidget(),
            _answerList(),
            SizedBox(height: 2.h),
            _nextButton(),
          ]),
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /*  Text(
          "Pregunta ${currentQuestionIndex + 1}/${widget.questionList.length.toString()}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
          ),
        ), */
        SizedBox(height: 2.h),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            widget.questionList[currentQuestionIndex].questionText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: widget.questionList[currentQuestionIndex].answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: 70.w,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 6.h,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Colors.orangeAccent : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    var color = 0xffff69b4;
    bool isLastQuestion = false;
    if (currentQuestionIndex == widget.questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: 50.w,
      height: 6.h,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Enviar" : "Siguiente"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color(color),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= widget.questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Aprobaste " : "Fallaste";

    return AlertDialog(
      title: Text(
        title + " | Puntaje: $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Reiniciar"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
