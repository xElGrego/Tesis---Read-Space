import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../data/item.dart';
import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = 0xff7f4ca5;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Read Space",
                        style: GoogleFonts.alegreya(
                          textStyle: TextStyle(
                            color: Colors.deepPurple[400],
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.1.h),
                      /*  Text(
                        "Inicio",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Colors.deepPurpleAccent[100],
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ), */
                    ],
                  ),
                  /*  Icon(
                    Icons.book,
                    color: Color.fromARGB(255, 11, 25, 129),
                    size: 4.h,
                  ) */
                  /* IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset(
                      "assets/photos/notification.png",
                      width: 24.w,
                    ),
                    onPressed: () {},
                  ) */
                ],
              ),
            ),
            SizedBox(height: 4.h),
            Container(
              height: 60.h,
              child: GridView.count(
                  childAspectRatio: 1.0,
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 4.h,
                  children: dataItem.map((data) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, data.route);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(color),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              data.img,
                              width: 10.w,
                              height: 7.h,
                            ),
                            SizedBox(height: 0.1.h),
                            Text(
                              data.title,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              data.subtitle,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            /* SizedBox(height: 1.h), */
                            Text(
                              textAlign: TextAlign.center,
                              data.event,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 1.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 20.h,
                child: Image.asset(
                  'assets/home/fondo.jpg',
                  fit: BoxFit.fill,
                  color: Colors.white.withOpacity(0.7),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
