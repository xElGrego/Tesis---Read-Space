import 'package:app_tesis/pages/video_page.dart';
import 'package:flutter/material.dart';
import '../data/videos.dart';

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
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPage(
                    name: e.name,
                    mediaUrl: e.mediaUrl,
                  ),
                ),
              ),
              child: Image.network(e.thumbUrl),
            );
          }).toList(),
        ),
      ),
    );
  }
}
