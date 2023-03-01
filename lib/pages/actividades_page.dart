import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/activities_model.dart';

class ActividadesPage extends StatelessWidget {
  const ActividadesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Actividades"),
          backgroundColor: Colors.deepPurple[400],
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: dataActivities.length,
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
          itemBuilder: (builder, index) {
            final data = dataActivities[index];
            return Card(
              child: ListTile(
                title: Text(data.name),
                /* subtitle: Text(data.subtitle), */
                /* leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(data.img),
                ), */
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  final Uri url = Uri.parse(data.url);

                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
