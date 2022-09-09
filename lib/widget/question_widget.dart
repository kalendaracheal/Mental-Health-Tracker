import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}

class QuestionWiget extends StatefulWidget {
  final String? questionHeader;
  final String? questionNumber;
  final String? question;
  final void Function()? onPressed;
  final String? buttonText;
  const QuestionWiget({
    Key? key,
    this.questionHeader,
    this.questionNumber,
    this.question,
    this.onPressed,
    this.buttonText
  }) : super(key: key);

  @override
  State<QuestionWiget> createState() => _QuestionWigetState();
}

class _QuestionWigetState extends State<QuestionWiget> {

  SingingCharacter? _character = SingingCharacter.not_at_all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('             Mental Health Tracker',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 0,
        backgroundColor:  Colors.transparent,
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20),

                  child: Column(
                    children: [
                      Text('${widget.questionHeader} ${widget.questionNumber}',
                        style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                      const SizedBox(height: 10,),
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('/images/mht.png'),
                      ),
                      const SizedBox(height: 10,),
                      Text('Over the last 2 weeks, how often have you been bothered by any of the following problems? ',

                          style: GoogleFonts.balsamiqSans(fontSize: 17.0, color: Colors.black87)
                      ),

                      const SizedBox(height: 10,),

                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
                    child: Column(
                      children:  [
                        Text('${widget.questionNumber}. ${widget.question}',
                          style: const TextStyle(
                              fontSize: 17.0
                          ),
                        ),
                      ],
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 20,top: 10),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Not at all'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.not_at_all,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Several days'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.several_days,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('More than half the days'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.more_than_half_the_days,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Nearly everyday'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.nearly_everyday,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )


      ),
      floatingActionButton:  ElevatedButton(
          onPressed: widget.onPressed,
          child:  Text("${widget.buttonText}")
      ),
      //const SizedBox(height: 20),

    );
  }
}
