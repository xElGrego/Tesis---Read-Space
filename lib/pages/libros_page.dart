import 'package:app_tesis/data/libros_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class LibrosPage extends StatefulWidget {
  const LibrosPage({Key? key}) : super(key: key);

  @override
  State<LibrosPage> createState() => _LibrosPageState();
}

class _LibrosPageState extends State<LibrosPage> {
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Libros"),
          backgroundColor: Colors.deepPurple[400],
        ),
        /* body: LibroWidget(), */
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Stack(
              /* alignment: Alignment.topCenter, */
              children: [
                Positioned(
                  child: Image.asset(
                    dataLibros[_current].img,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(0),
                          Colors.grey.shade50.withOpacity(0),
                          Colors.grey.shade50.withOpacity(0),
                          Colors.grey.shade50.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1.h,
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    items: dataLibros.map((e) {
                      return Builder(builder: (context) {
                        return Container(
                          width: 100.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.5),
                                  blurRadius: 0.5,
                                  spreadRadius: .5,
                                  offset: Offset(2, 5),
                                ),
                              ]),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 39.h,
                                  margin: EdgeInsets.only(top: 5.h),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Color.fromARGB(255, 114, 32, 32).withOpacity(1),
                                        Color.fromARGB(255, 168, 11, 11).withOpacity(1),
                                        Color.fromARGB(255, 160, 11, 11).withOpacity(1),
                                        Color.fromARGB(255, 138, 17, 17).withOpacity(1),
                                        Colors.grey.shade50.withOpacity(0),
                                        Color.fromARGB(255, 154, 20, 20).withOpacity(0),
                                        Colors.grey.shade50.withOpacity(0),
                                        Colors.grey.shade50.withOpacity(0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: () async {
                                      final Uri _url = Uri.parse(
                                          'https://www.ellibrototal.com/ltotal/?t=1&d=' + e.idApp);

                                      if (!await launchUrl(_url)) {
                                        throw Exception('Could not launch $_url');
                                      }
                                    },
                                    child: Image.asset(
                                      e.img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  e.title,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  e.subtitle,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 3.h,
                                          ),
                                          SizedBox(width: 2.w),
                                          Text(
                                            '5.0',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.yellow,
                                            size: 3.h,
                                          ),
                                          SizedBox(width: 2.w),
                                          Text(
                                            '3h',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                        height: 500.0,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.70,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
