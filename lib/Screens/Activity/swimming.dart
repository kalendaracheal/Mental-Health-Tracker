import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/page/Activities_page.dart';

import '../../widget/activity_widget.dart';

class Swimming extends StatefulWidget {
  const Swimming({Key? key}) : super(key: key);

  @override
  State<Swimming> createState() => _SwimmingState();
}

class _SwimmingState extends State<Swimming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE3F2FD),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text('             Mental Health Tracker',
              style: GoogleFonts.varelaRound(
                  fontWeight: FontWeight.bold, fontSize: 20)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Activity_widget(
          activityPicture: 'assets/images/swim.jpg',
          activityHeader: 'Swimming',
          activityBody:
              '''Bring a book or some music along and spend a couple of hours swimming and relaxing in the sun. If the beach is inaccessible, see if your local community center has an outdoor swimming pool you can use.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
