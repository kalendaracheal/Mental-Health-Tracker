import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/page/quiz.dart';
import 'package:mentalhealthtracker/page/result.dart';

class Qn extends StatefulWidget {
  const Qn({Key? key}) : super(key: key);

  @override
  State<Qn> createState() => _QnState();
}

class _QnState extends State<Qn> {
  final _questions = const [
    {
      'Question 1': 'Little interest or pleasure in doing things',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 2': 'Feeling down, depressed, or hopeless',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 3 ': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 4': 'Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 5': 'Poor appetite or overeating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 6': '''Feeling bad about yourself — or that you are a failure or
      have let yourself or your family down''',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 7': '''Trouble concentrating on things, such as reading the
newspaper or watching television''',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 8': '''Moving or speaking so slowly that other people could have
noticed? Or the opposite — being so fidgety or restless
that you have been moving around a lot more than usual''',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'Question 9': '''Thoughts that you would be better off dead or of hurting
yourself in some way''',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: _questionIndex < _questions.length
                  ? //Text('KIT FDSIJNJID')
              MyQuiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    ) //Quiz
                  : Result( _resetQuiz,_totalScore),
            ),
          ],
        ),
      ),
    );
  }
}
