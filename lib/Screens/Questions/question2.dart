// ignore_for_file: file_names, constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthtracker/Screens/Questions/question3.dart';
import 'package:mentalhealthtracker/widget/question_widget.dart';

import '../../Contollers/question_controller.dart';
// enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question2 extends StatefulWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  var child;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (contrl) {
          return GetBuilder<QuestionController>(
            builder: (contrl) {
              return QuestionWiget(
                questionHeader: 'Question',
                questionNumber: '1',
                question: 'Little interest or pleasure in doing things ',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Question3()),
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
            }
          );
        });
  }
}
