import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler;
  // final String answerText;
  // final String answerColor;

  final String answerText;
  //final Color answerColor;
  final Function answerTap;

  const Answer({required this.answerText, required this.answerTap});
  // const Answer(
  //     {Key? key,
  //       required this.answerText,
  //       required this.answerColor,
  //       required this.answerTap
  //       //required this.selectHandler,
  //     })
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // SizedBox(
      //   width: double.infinity,
      //   child: ElevatedButton(
      //     onPressed: selectHandler(),
      //     style: ButtonStyle(
      //         textStyle: MaterialStateProperty.all(
      //             const TextStyle(color: Colors.white)),
      //         backgroundColor: MaterialStateProperty.all(Colors.green)),
      //     child: Text(answerText),
      //   ));

     InkWell(
      onTap: answerTap(),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(

          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
