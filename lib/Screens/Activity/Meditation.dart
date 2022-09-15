import 'package:flutter/material.dart';

import '../../page/Activities_page.dart';
import '../../widget/Activity_widget.dart';

class Meditation extends StatefulWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  @override
  Widget build(BuildContext context) {
    return Activity_widget(
      activityPicture: 'assets/images/meditation.jpg',
      activityHeader: 'Get a meditation session',
      activityBody: '''Like yoga, meditation is an excellent way for you to learn how to relax your mind and efficiently refocus it. Meditation also betters our focus and concentration, improves self-awareness and self-esteem, lowers our levels of stress and anxiety, and fostering kindness. Meditation can give you a sense of calm, peace and balance that can benefit both your emotional well-being and your overall health. It can help with managing negative emotions, such as anger and fear.\n\n\nA simple meditation that anyone can do is a mindfulness meditation.\n\n In the place you are at this very moment, just look around. Notice everything that surrounds you. Pay attention to the colors, textures, shapes and lines. Then listen to all the sounds and pay close attention to every subtle nuance. Notice the smells, the air temperature and any sensory information you are receiving. Do not judge what you are perceiving; do not attempt to make any sense of it. Just for the moment, be aware of your breathing, the feeling of your feet touching the floor and bear witness to all that is surrounding you. Allow yourself simply to observe and become a part of the moment. This simple meditation can help you, in many ways.''',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activities_page()),
        );
      },
    );
  }
}
