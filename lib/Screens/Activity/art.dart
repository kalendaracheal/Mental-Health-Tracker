import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/activities_page.dart';
import '../../widget/activity_widget.dart';

class Art extends StatefulWidget {
  const Art({Key? key}) : super(key: key);

  @override
  State<Art> createState() => _ArtState();
}

class _ArtState extends State<Art> {
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
          activityPicture: 'assets/images/art.jpg',
          activityHeader: 'Art and Crafts',
          activityBody:
              '''Creativity is an ideal way to express yourself, and it can help you do that even when you don’t intend to. Writing, pottery and sketching are some examples of creative outlets for depression. Paper crafts, like making cards, or needlework, like knitting or embroidery, help you focus on a detailed task that often requires your full attention, leaving little room for unhappy or harmful thoughts to take over.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activitiespage()),
            );
          },
        )));
  }
}
