import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Chores extends StatefulWidget {
  const Chores({Key? key}) : super(key: key);

  @override
  State<Chores> createState() => _ChoresState();
}

class _ChoresState extends State<Chores> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/chores.jpg',
      activityHeader: 'Do house chores',
      activityBody: '''Believe it or not, household chores can be calming and therapeutic. Washing dishes, doing laundry, dusting or reorganizing things allows you to refocus your mind and, in the case of reorganization, flexes your creativity as well.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
