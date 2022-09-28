// ignore_for_file: constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthtracker/Contollers/question_controller.dart';

import '../../widget/question_widget.dart';
import 'question8.dart';

enum SingingCharacter {
  not_at_all,
  several_days,
  more_than_half_the_days,
  nearly_everyday
}

class Question7 extends StatefulWidget {
  const Question7({Key? key}) : super(key: key);

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  var child;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (contrl) {
          return QuestionWiget(
            questionHeader: 'Question',
            questionNumber: '6',
            question:
                'Feeling bad about yourself — or that you are a failure or have let yourself or your family down  ',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Question8()),
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
