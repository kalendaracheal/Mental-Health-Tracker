import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/page/Activities_page.dart';

import '../../widget/Activity_widget.dart';

class Gardening extends StatefulWidget {
  const Gardening({Key? key}) : super(key: key);

  @override
  State<Gardening> createState() => _GardeningState();
}

class _GardeningState extends State<Gardening> {
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
          activityPicture: 'assets/images/gardening.jpg',
          activityHeader: 'Gardening',
          activityBody:
              '''Working with plants, especially with your hands, has proved to lessen the severity of depression. It helps you focus and keeps your mind from drifting to unhappy and unhelpful thoughts. Plus, the final products provide a sense of pride. You can start with a couple of plants on your windowsill or in your backyard. You can also look into renting a plot to garden in or volunteer with community gardens.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
