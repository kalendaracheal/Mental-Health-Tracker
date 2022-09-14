import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/bg.png',
      activityHeader: 'Watch a movie',
      activityBody: '''Going to the movies by yourself is an underrated activity, especially if you opt to go during the daytime, when multiplexes aren’t as busy. Get lost in a great movie or documentary, often in a theater that’s pretty much empty.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
