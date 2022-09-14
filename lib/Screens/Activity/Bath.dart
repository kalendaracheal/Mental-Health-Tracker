import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Bath extends StatefulWidget {
  const Bath({Key? key}) : super(key: key);

  @override
  State<Bath> createState() => _BathState();
}

class _BathState extends State<Bath> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/bath.jpg',
      activityHeader: 'Take a bath',
      activityBody: '''There’s a reason baths are so luxurious, and part of that is because they make you so comfortable. Spending an hour with some bubbles, a good read and maybe even some candles can distract you and help your mind relax. It’s one of the simplest forms of self-care.
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
