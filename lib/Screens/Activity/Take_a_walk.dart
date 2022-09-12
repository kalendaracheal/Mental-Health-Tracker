import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/widget/Activity_widget.dart';

import '../Questions/Question4.dart';

class Take_a_walk extends StatefulWidget {
  const Take_a_walk({Key? key}) : super(key: key);

  @override
  State<Take_a_walk> createState() => _Take_a_walkState();
}

class _Take_a_walkState extends State<Take_a_walk> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/bg.png',
      activityHeader: 'Take a walk',
      activityBody: '''Just like food nourishes the body and brain – so does Movement! Moving outside has proven to give relief an refesh the mind. It can be a tour around the neighborhood, taking a pet for a walk, taking strolls in the park or even moving outside your house. It can also help take our mind off our worries and it can help to promote a sense of well-being, making us feel both physically and emotionally stronger, enabling us to ‘handle’ more in our lives. It’s important to make movement a part of our every day lives, because the benefits of moving more are so vast''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
    );
  }
}
