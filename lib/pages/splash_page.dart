import 'dart:async';
import 'package:app_tesis/pages/home_page.dart';
import 'package:app_tesis/pages/videos_page.dart';
import 'package:app_tesis/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    /* Timer(
      const Duration(minutes: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    ); */
  }

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        /*  backgroundColor: (Colors.deepPurple[400]), */
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/books/draw1.png',
                          height: 22.h,
                        ),
                        Text(
                          "Lee tus libros favoritos",
                          style: GoogleFonts.alegreya(
                            fontSize: 25.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          textAlign: TextAlign.center,
                          "Segunda descripcion un poco mas largo para detallar una acción de la cantidad de recursos que existiran en ese libro.",
                          style: GoogleFonts.alegreya(
                            fontSize: 12.sp,
                            color: Colors.black,
                            letterSpacing: 1.2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/books/draw2.png',
                          height: 22.h,
                        ),
                        Text(
                          "Lee tus libros favoritos",
                          style: GoogleFonts.alegreya(
                            fontSize: 25.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          textAlign: TextAlign.center,
                          "Segunda descripcion un poco mas largo para detallar una acción de la cantidad de recursos que existiran en ese libro.",
                          style: GoogleFonts.alegreya(
                            fontSize: 12.sp,
                            color: Colors.black,
                            letterSpacing: 1.2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/books/draw3.png',
                          height: 22.h,
                        ),
                        Text(
                          "Lee tus libros favoritos",
                          style: GoogleFonts.alegreya(
                            fontSize: 25.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          textAlign: TextAlign.center,
                          "Segunda descripcion un poco mas largo para detallar una acción de la cantidad de recursos que existiran en ese libro.",
                          style: GoogleFonts.alegreya(
                            fontSize: 12.sp,
                            color: Colors.black,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Text(
                            'Comenzemos',
                            style: GoogleFonts.alegreya(
                              fontSize: 10.sp,
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 1.h),
                            backgroundColor: Colors.deepPurple[400],
                            shape: StadiumBorder(),
                          ),
                        )
                        /* GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepPurple[400],
                            ),
                            child: Center(
                              child: Text(
                                'Comenzemos',
                                style: GoogleFonts.alegreya(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ) */
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.55),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                  spacing: 8.0,
                  dotWidth: 18.0,
                  radius: 10.0,
                  dotHeight: 16.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.1,
                  dotColor: Color.fromARGB(255, 86, 85, 85),
                  activeDotColor: Color.fromARGB(255, 91, 9, 185),
                ),
              ),
            ),
          ],
        ),

        /*  body: Center(
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
        ), */
      ),
    );
  }
}
