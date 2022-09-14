import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Have_A_bite extends StatefulWidget {
  const Have_A_bite({Key? key}) : super(key: key);

  @override
  State<Have_A_bite> createState() => _Have_A_biteState();
}

class _Have_A_biteState extends State<Have_A_bite> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/bite.jpg',
      activityHeader: 'Have a bite',
      activityBody: '''Treat yourself to a meal at your favorite restaurant. Bring a book along or request a seat by the window and do some people-watching while enjoying a delicious meal.
''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
