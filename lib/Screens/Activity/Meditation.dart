import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Meditation extends StatefulWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/meditation.jpg',
      activityHeader: 'Get a meditation session',
      activityBody: '''Like yoga, meditation is an excellent way for you to learn how to relax your mind and efficiently refocus it.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
