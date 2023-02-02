import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/item.dart';
import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Column(
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Read Space",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: CustomColors.green,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Inicio",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: const Color(0xffa29aac),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset(
                      "assets/photos/notification.png",
                      width: 24.w,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Flexible(
              child: GridView.count(
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  crossAxisCount: 2,
                  crossAxisSpacing: 18.w,
                  mainAxisSpacing: 38.h,
                  children: dataItem.map((data) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(color),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            data.img,
                            width: 42.w,
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            data.title,
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            data.subtitle,
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            data.event,
                            style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
