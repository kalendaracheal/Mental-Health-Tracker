import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/activities_page.dart';
import '../../widget/activity_widget.dart';

class HaveAbite extends StatefulWidget {
  const HaveAbite({Key? key}) : super(key: key);

  @override
  State<HaveAbite> createState() => _HaveAbiteState();
}

class _HaveAbiteState extends State<HaveAbite> {
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
          activityPicture: 'assets/images/bite.jpg',
          activityHeader: 'Have a bite',
          activityBody:
              '''Treat yourself to a meal at your favorite restaurant. Bring a book along or request a seat by the window and do some people-watching while enjoying a delicious meal.
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
