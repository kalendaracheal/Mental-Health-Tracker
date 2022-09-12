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
      activityPicture: 'assets/images/bg.png',
      activityHeader: 'Reading in the park',
      activityBody: '''Sometimes, being among a crowd of people can be comforting and make you feel less lonely and isolated. 
      Sitting with a good book and maybe some small snacks in a park on a sunny day may be one of the best simple activities
       to fight depression''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
    );
  }
}
