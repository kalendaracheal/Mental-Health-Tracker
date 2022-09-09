// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Questions/Question4.dart';

import '../../widget/question_widget.dart';

// ignore: constant_identifier_names
enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {

  var child;
  @override
  Widget build(BuildContext context) {
    return QuestionWiget(
      questionHeader: 'Question',
      questionNumber: '2',
      question: 'Feeling down, depressed, or hopeless  ',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question4()),
        );
      },
      buttonText: 'Next',
    );


  }
}