import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Art extends StatefulWidget {
  const Art({Key? key}) : super(key: key);

  @override
  State<Art> createState() => _ArtState();
}

class _ArtState extends State<Art> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/art.jpg',
      activityHeader: 'Art and Crafts',
      activityBody: '''Creativity is an ideal way to express yourself, and it can help you do that even when you don’t intend to. Writing, pottery and sketching are some examples of creative outlets for depression. Paper crafts, like making cards, or needlework, like knitting or embroidery, help you focus on a detailed task that often requires your full attention, leaving little room for unhappy or harmful thoughts to take over.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
