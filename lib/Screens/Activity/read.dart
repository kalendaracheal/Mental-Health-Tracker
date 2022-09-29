import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/page/activities_page.dart';
import 'package:mentalhealthtracker/widget/activity_widget.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
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
          activityPicture: 'assets/images/Readinthepark.jpg',
          activityHeader: 'Read',
          activityBody:
              '''Sometimes, there’s nothing better than getting lost in a good mystery book or spend some time learning about ancient history. Whatever your interest, there’s probably a book on it, and reading is a perfect way to distract yourself from unhappy thoughts while also stimulating your brain. Magazines, graphic novels, newspapers and comic books are also valid reading material.
''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activitiespage()),
            );
          },
        )));
  }
}
