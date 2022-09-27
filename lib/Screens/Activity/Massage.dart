import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Massage extends StatefulWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  State<Massage> createState() => _MassageState();
}

class _MassageState extends State<Massage> {
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
          activityPicture: 'assets/images/massage.jpg',
          activityHeader: 'Get a massage',
          activityBody:
              '''If baths don’t do anything for you, book a massage for yourself and allow a professional to help you relax, body and mind. Massage therapy has also been linked to both improvement in sleep. ''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
