import 'dart:async';
import 'package:app_tesis/pages/home_page.dart';
import 'package:app_tesis/pages/videos_page.dart';
import 'package:app_tesis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (Colors.deepPurple[400]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              Text(
                "Read Space",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: CustomColors.white,
                ),
              ),
              Lottie.asset(
                'assets/animations/animation_splash.json',
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
