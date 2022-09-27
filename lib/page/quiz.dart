import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/page/question.dart';
import 'package:mentalhealthtracker/page/answer.dart';



class MyQuiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const  MyQuiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(), questionText: '',
        ), //Question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                  answerText: answer['text'].toString(),answerTap: ()=> answerQuestion(answer['score']),);
        }).toList()
      ],
    );
  }
}
