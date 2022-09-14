import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/yoga.jpg',
      activityHeader: 'Yoga',
      activityBody: '''Since this ancient practice is a spiritual one at its core, the benefits of yoga go beyond physical. When you include yoga — and all its mindfulness practices — with your treatment for depression, like antidepressants and therapy, you will likely see an overall improvement in your physical and mental health.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
