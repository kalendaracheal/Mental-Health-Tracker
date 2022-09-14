import 'package:flutter/material.dart';

import '../../widget/Activity_widget.dart';
import '../Questions/Question4.dart';

class Swimming extends StatefulWidget {
  const Swimming({Key? key}) : super(key: key);

  @override
  State<Swimming> createState() => _SwimmingState();
}

class _SwimmingState extends State<Swimming> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/swim.jpg',
      activityHeader: 'Swimming',
      activityBody: '''Bring a book or some music along and spend a couple of hours swimming and relaxing in the sun. If the beach is inaccessible, see if your local community center has an outdoor swimming pool you can use.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
    );

  }
}
