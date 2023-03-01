import 'package:app_tesis/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../data/videos_model.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Videos"),
          backgroundColor: Colors.deepPurple[400],
        ),
        body: ListView(
          children: dataVideos.map((e) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Column(
                children: [
                  Text(
                    e.name,
                    style: GoogleFonts.alegreya(
                      fontSize: 16.sp,
                      color: Colors.black,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(
                          name: e.name,
                          mediaUrl: e.mediaUrl,
                        ),
                      ),
                    ),
                    child: Image.asset(e.thumbUrl),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
