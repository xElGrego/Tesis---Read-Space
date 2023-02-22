import 'package:app_tesis/pages/actividades_page.dart';
import 'package:app_tesis/pages/home_page.dart';
import 'package:app_tesis/pages/libros_page.dart';
import 'package:app_tesis/pages/question_page.dart';
import 'package:app_tesis/pages/questions_page.dart';
import 'package:app_tesis/pages/splash_page.dart';
import 'package:app_tesis/pages/videos_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'data/question/questionEmancipada.dart';
import 'data/question_model.dart';

main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Question> questionList = getQuestionEmancipada();
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          /* home: const SplashPage(), */
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashPage(),
            '/libros': (context) => const LibrosPage(),
            '/preguntas': (context) => const QuestionsPage(),
            '/videos': (context) => const VideosPage(),
            '/actividades': (context) => const ActividadesPage(),
          },
          /* home: Scaffold(
            body: Center(
              child: Container(
                color: Colors.red,
                width: 200.w,
                height: 200.h,
                alignment: Alignment.center,
                child: Text(
                  "HoLA",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ),
          ), */
        );
      },
    );
  }
}
