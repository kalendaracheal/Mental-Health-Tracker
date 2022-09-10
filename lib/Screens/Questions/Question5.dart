// ignore: file_names
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Questions/Question6.dart';

import '../../widget/question_widget.dart';

enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question5 extends StatefulWidget {
  const Question5({Key? key}) : super(key: key);

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  // ignore: prefer_typing_uninitialized_variables
  var child;
  @override
  Widget build(BuildContext context) {
    return QuestionWiget(
      questionHeader: 'Question',
      questionNumber: '4',
      question: 'Feeling tired or having little energy     ',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question6()),
        );
      },
      buttonText: 'Next',
    );

  }
}
