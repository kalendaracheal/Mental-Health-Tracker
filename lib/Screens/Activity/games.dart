import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/activity_widget.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
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
          activityPicture: 'assets/images/game.jpg',
          activityHeader: 'Video Game',
          activityBody:
              '''Video games and old-fashioned puzzles are fun activities for depression that help you refocus your mind and also stimulate it. Casual video gaming has shown to reduce stress and lessen symptoms of depression. Both video games and puzzles require you to use problem-solving skills, which is a way to exercise your creativity.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
