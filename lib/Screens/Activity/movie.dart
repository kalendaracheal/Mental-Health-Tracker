import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/activities_page.dart';
import '../../widget/activity_widget.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
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
          activityPicture: 'assets/images/movie.jpg',
          activityHeader: 'Watch a movie',
          activityBody:
              '''Going to the movies by yourself is an underrated activity, especially if you opt to go during the daytime, when multiplexes aren’t as busy. Get lost in a great movie or documentary, often in a theater that’s pretty much empty.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activitiespage()),
            );
          },
        )));
  }
}
