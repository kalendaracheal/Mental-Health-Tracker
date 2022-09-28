import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/activity_widget.dart';

class Bath extends StatefulWidget {
  const Bath({Key? key}) : super(key: key);

  @override
  State<Bath> createState() => _BathState();
}

class _BathState extends State<Bath> {
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
          activityPicture: 'assets/images/bath.jpg',
          activityHeader: 'Take a bath',
          activityBody:
              '''There’s a reason baths are so luxurious, and part of that is because they make you so comfortable. Spending an hour with some bubbles, a good read and maybe even some candles can distract you and help your mind relax. It’s one of the simplest forms of self-care.
''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
