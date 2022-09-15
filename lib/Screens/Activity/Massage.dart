import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Massage extends StatefulWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  State<Massage> createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/massage.jpg',
      activityHeader: 'Get a massage',
      activityBody: '''If baths don’t do anything for you, book a massage for yourself and allow a professional to help you relax, body and mind. Massage therapy has also been linked to both improvement in sleep. ''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
