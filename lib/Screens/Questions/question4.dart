// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthtracker/Contollers/question_controller.dart';
import 'package:mentalhealthtracker/Screens/Questions/question5.dart';

import '../../widget/question_widget.dart';


class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  var child;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (contrl) {
          return QuestionWiget(
            questionHeader: 'Question',
            questionNumber: '3',
            question:
                'Trouble falling or staying asleep, or sleeping too much    ',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Question5()),
              );
            },
            buttonText: 'Next',
            notAtAllOnChanged: (int? value) {
              contrl.selectedRadio = value!;
              contrl.addAnswer(value);
              // print('$value');
            },
            severalDaysOnChanged: (int? value) {
              contrl.selectedRadio = value!;
              contrl.addAnswer(value);
              // print('$value');
            },
            moreThanHalfTheDaysOnChanged: (int? value) {
              contrl.selectedRadio = value!;
              contrl.addAnswer(value);
              // print('$value');
            },
            nearlyEverydayOnChanged: (int? value) {
              contrl.selectedRadio = value!;
              contrl.addAnswer(value);

              // print('$value');
            },
          );
        });
  }
}
