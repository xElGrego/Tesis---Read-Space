import 'package:app_tesis/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashPage(),
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
