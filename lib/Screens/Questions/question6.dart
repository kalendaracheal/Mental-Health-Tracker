// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthtracker/Contollers/question_controller.dart';

import '../../widget/question_widget.dart';
import 'question7.dart';

// ignore: constant_identifier_names
enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question6 extends StatefulWidget {
  const Question6({Key? key}) : super(key: key);

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {

  var child;
  @override
  Widget build(BuildContext context) {

    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (contrl) {
        return QuestionWiget(
          questionHeader: 'Question',
          questionNumber: '5',
          question: 'Poor appetite or overeating       ',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Question7()),
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

  }
}
