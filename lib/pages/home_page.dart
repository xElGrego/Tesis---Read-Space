import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../data/item.dart';
import '../utils/colors.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
