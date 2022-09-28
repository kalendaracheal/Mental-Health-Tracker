// ignore_for_file: constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthtracker/Contollers/question_controller.dart';

import '../../widget/question_widget.dart';
import 'question9.dart';

enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class Question8 extends StatefulWidget {
  const Question8({Key? key}) : super(key: key);

  @override
  State<Question8> createState() => _Question8State();
}

class _Question8State extends State<Question8> {

  var child;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (contrl) {
        return QuestionWiget(
          questionHeader: 'Question',
          questionNumber: '7',
          question: 'Trouble concentrating on things, such as reading the newspaper or watching television    ',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Question9()),
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
