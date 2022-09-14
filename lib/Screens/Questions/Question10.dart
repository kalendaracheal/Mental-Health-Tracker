// ignore: file_names
// ignore_for_file: constant_identifier_names, file_names, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Questions/Question11.dart';

import '../../widget/question_widget.dart';


enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}
int selectedRadiotile = 0;
class Question10 extends StatefulWidget {
  const Question10({Key? key}) : super(key: key);

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {

  var child;
  @override
  Widget build(BuildContext context) {
    return QuestionWiget(
      questionHeader: 'Question',
      questionNumber: '9',
      question: 'Thoughts that you would be better off dead or of hurting yourself in some way   ',

      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Question11()),
        );
      },
      buttonText: 'Next',
    );

  }
}
