import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/widget/Activity_widget.dart';

import '../Questions/Question4.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/Readinthepark.jpg',
      activityHeader: 'Read',
      activityBody: '''Sometimes, there’s nothing better than getting lost in a good mystery book or spend some time learning about ancient history. Whatever your interest, there’s probably a book on it, and reading is a perfect way to distract yourself from unhappy thoughts while also stimulating your brain. Magazines, graphic novels, newspapers and comic books are also valid reading material.
''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
    );
  }
}
