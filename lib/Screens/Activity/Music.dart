import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
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
          activityPicture: 'assets/images/music.jpg',
          activityHeader: 'Music',
          activityBody:
              '''Because of its rhythmic and repetitive aspects, music engages the neocortex of our brain, which calms us and reduces impulsivity. Music is an incredible vehicle to help us process negative emotion. Meditative music has a cathartic effect on us, improving our mood and inducing relaxation of both the body and mind. Playing uplifting songs has a profound effect on the brain, stimulating it to increase feel-good hormones which boost our mood.\n\n Music acts as a medium for processing emotions, trauma, and grief—but music can also be utilized as a regulating or calming agent for anxiety or for dysregulation. Music is an essential tool in mood management and can be used on a daily basis. \n\n Enjoy listening to familiar music that comforts you and evokes positive memories and associations.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        )));
  }
}
