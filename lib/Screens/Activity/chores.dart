import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/activity_widget.dart';

class Chores extends StatefulWidget {
  const Chores({Key? key}) : super(key: key);

  @override
  State<Chores> createState() => _ChoresState();
}

class _ChoresState extends State<Chores> {
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
          activityPicture: 'assets/images/chores.jpg',
          activityHeader: 'Do house chores',
          activityBody:
              '''Believe it or not, household chores can be calming and therapeutic. Washing dishes, doing laundry, dusting or reorganizing things allows you to refocus your mind and, in the case of reorganization, flexes your creativity as well.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
