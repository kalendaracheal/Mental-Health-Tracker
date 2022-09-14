import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/widget/Activity_widget.dart';

import '../Questions/Question4.dart';

class Cooking extends StatefulWidget {
  const Cooking({Key? key}) : super(key: key);

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/cooking.jpg',
      activityHeader: 'Cook yourself a meal',
      activityBody: ''' Preparing a meal for yourself is an excellent way to keep busy, do something creative and have something tasty to eat at the end. Try new recipes or make old favorites.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
    );
  }
}
