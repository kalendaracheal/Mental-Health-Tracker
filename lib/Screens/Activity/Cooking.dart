import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/page/Activities_page.dart';
import 'package:mentalhealthtracker/widget/Activity_widget.dart';

class Cooking extends StatefulWidget {
  const Cooking({Key? key}) : super(key: key);

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
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
          activityPicture: 'assets/images/cooking.jpg',
          activityHeader: 'Cook yourself a meal',
          activityBody:
              ''' Preparing a meal for yourself is an excellent way to keep busy, do something creative and have something tasty to eat at the end. Try new recipes or make old favorites.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
