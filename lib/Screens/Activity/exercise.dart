import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Activities_page.dart';
import '../../widget/activity_widget.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('             Mental Health Tracker',
            style: GoogleFonts.varelaRound(
                fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Activity_widget(
          activityPicture: 'assets/images/exercise.jpg',
          activityHeader: 'Exercise',
          activityBody:
              '''Exercise is good for both your physical and mental well being. Regular exercise seems to encourage the brain to rewire itself in positive ways. It temporarily boosts feel-good chemicals called endorphins.\n\n Exercise improves mental health by reducing anxiety, depression, and negative mood and by improving self-esteem and cognitive function. Exercise has also been found to alleviate symptoms such as low self-esteem and social withdrawal.\n\nExercise is important for people with mental illness – it not only boosts our mood, concentration and alertness, but improves our cardiovascular and overall physical health. Physical activity can be an outlet for your frustrations. Exercise can distract you from negative thoughts and provide opportunities to try new experiences.''',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Activities_page()),
            );
          },
        ),
      ),
    );
  }
}
