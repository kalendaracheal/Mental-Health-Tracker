import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/page/quiz.dart';
import 'package:mentalhealthtracker/page/result.dart';

import 'answer.dart';

class Qn extends StatefulWidget {
  const Qn({Key? key}) : super(key: key);

  @override
  State<Qn> createState() => _QnState();
}

class _QnState extends State<Qn> {


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
                  ?
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
}







class MyQn extends StatefulWidget {
  const MyQn({Key? key}) : super(key: key);

  @override
  State<MyQn> createState() => _MyQnState();
}

class _MyQnState extends State<MyQn> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      // answer was selected
      answerWasSelected = true;
      // check if answer was correct
      if (answerScore) {
        _totalScore++;
        correctAnswerSelected = true;
      }
      // adding to the score tracker on top
      _scoreTracker.add(
        answerScore
            ? const Icon(
          Icons.check_circle,
          color: Colors.green,
        )
            : const Icon(
          Icons.clear,
          color: Colors.red,
        ),
      );
      //when the quiz ends
      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    // what happens at the end of the quiz
    if (_questionIndex >= _questions.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                if (_scoreTracker.isEmpty)
                  const SizedBox(
                    height: 25.0,
                  ),
                if (_scoreTracker.isNotEmpty) ..._scoreTracker
              ],
            ),
            Container(
              width: double.infinity,
              height: 130.0,
              margin: const EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  _questions[_questionIndex]['question'].toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...(_questions[_questionIndex]['answers']
            as List<Map<String, Object>>)
                .map(
                  (answer) => Answer(
                answerText: answer['answerText'].toString(),

                answerTap: () {
                  // if answer was already selected then nothing happens onTap
                  if (answerWasSelected) {
                    return;
                  }
                  //answer is being selected
                  _questionAnswered(false);
                },
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 40.0),
              ),
              onPressed: () {
                if (!answerWasSelected) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'Please select an answer before going to the next question'),
                  ));
                  return;
                }
                _nextQuestion();
              },
              child: Text(endOfQuiz ? 'Restart Quiz' : 'Next Question'),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '${_totalScore.toString()}/${_questions.length}',
                style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            if (answerWasSelected && !endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: correctAnswerSelected ? Colors.green : Colors.red,
                child: Center(
                  child: Text(
                    correctAnswerSelected
                        ? 'Well done, you got it right!'
                        : 'Wrong :/',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            if (endOfQuiz)
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black,
                child: Center(
                  child: Text(
                    _totalScore > 4
                        ? 'Congratulations! Your final score is: $_totalScore'
                        : 'Your final score is: $_totalScore. Better luck next time!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: _totalScore > 4 ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  final _questions = const [
    {
      'Question 1': 'Little interest or pleasure in doing things',
      'answers': [
        {'text': 'Not at all', 'score': true},
        {'text': 'Several days', 'score': false},
        {'text': 'More than half the days', 'score': false},
        {'text': 'Nearly everyday', 'score': false},
      ],
    },
    {
      'Question 2': 'Feeling down, depressed, or hopeless',
      'answers': [
        {'text': 'Not at all', 'score': false},
        {'text': 'Several days', 'score': true},
        {'text': 'More than half the days', 'score': false},
        {'text': 'Nearly everyday', 'score': false},
      ],
    },
    {
      'Question 3 ': 'Trouble falling or staying asleep, or sleeping too much',
      'answers': [
        {'text': 'Not at all', 'score': false},
        {'text': 'Several days', 'score': false},
        {'text': 'More than half the days', 'score': false},
        {'text': 'Nearly everyday', 'score': true},
      ],
    },
//     {
//       'Question 4': 'Feeling tired or having little energy',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
//     {
//       'Question 5': 'Poor appetite or overeating',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
//     {
//       'Question 6': '''Feeling bad about yourself — or that you are a failure or
//       have let yourself or your family down''',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
//     {
//       'Question 7': '''Trouble concentrating on things, such as reading the
// newspaper or watching television''',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
//     {
//       'Question 8': '''Moving or speaking so slowly that other people could have
// noticed? Or the opposite — being so fidgety or restless
// that you have been moving around a lot more than usual''',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
//     {
//       'Question 9': '''Thoughts that you would be better off dead or of hurting
// yourself in some way''',
//       'answers': [
//         {'text': 'Not at all', 'score': 0},
//         {'text': 'Several days', 'score': 1},
//         {'text': 'More than half the days', 'score': 2},
//         {'text': 'Nearly everyday', 'score': 3},
//       ],
//     },
  ];
}

