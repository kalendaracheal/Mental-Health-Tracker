// ignore_for_file: constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../widget/question_widget.dart';
import 'Question10.dart';

enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}
class Question9 extends StatefulWidget {
  const Question9({Key? key}) : super(key: key);

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {

  var child;
  @override
  Widget build(BuildContext context) {
    return QuestionWiget(
      questionHeader: 'Question',
      questionNumber: '8',
      question: 'Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual  ',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question10()),
        );
      },
      buttonText: 'Next',
    );

  }
}
