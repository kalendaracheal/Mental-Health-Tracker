// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Questions/Question5.dart';

import '../../widget/question_widget.dart';
// ignore: constant_identifier_names
enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {

  var child;
  @override
  Widget build(BuildContext context) {
    return QuestionWiget(
      questionHeader: 'Question',
      questionNumber: '3',
      question: 'Trouble falling or staying asleep, or sleeping too much    ',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question5()),
        );
      },
      buttonText: 'Next',
    );


  }
}
