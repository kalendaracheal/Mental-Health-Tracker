import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/page/activities_page.dart';
import 'package:mentalhealthtracker/widget/activity_widget.dart';


class TakeAwalk extends StatefulWidget {
  const TakeAwalk({Key? key}) : super(key: key);

  @override
  State<TakeAwalk> createState() => _TakeAwalkState();
}

class _TakeAwalkState extends State<TakeAwalk> {
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
          activityPicture: 'assets/images/walk.jpg',
          activityHeader: 'Take a walk',
          activityBody:
              '''Just like food nourishes the body and brain – so does Movement! Moving outside has proven to give relief and refesh the mind. It can be a tour around the neighborhood, taking a pet for a walk, taking strolls in the park or even moving outside your house. \n\n It can also help take our mind off our worries and it can help to promote a sense of well-being, making us feel both physically and emotionally stronger, enabling us to ‘handle’ more in our lives. It’s important to make movement a part of our every day lives, because the benefits of moving more are so vast''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activitiespage()),
            );
          },
        )));
  }
}
