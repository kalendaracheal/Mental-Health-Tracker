// ignore: file_names
// ignore_for_file: constant_identifier_names, file_names, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Question11.dart';


enum SingingCharacter { not_at_all, several_days, more_than_half_the_days, nearly_everyday}
class Question10 extends StatefulWidget {
  const Question10({Key? key}) : super(key: key);

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
  SingingCharacter? _character = SingingCharacter.not_at_all;

  var child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 20),

                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text('Question 9',
                      style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                    const SizedBox(height: 10,),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/mht.png'),
                    ),
                    const SizedBox(height: 10,),
                    const Text('Over the last 2 weeks, how often have you been bothered by any of the following problems? ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black87
                        )),
                    const SizedBox(height: 10,),

                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
                  child: Column(
                    children: const [
                      Text('9. Thoughts that you would be better off dead or of hurting yourself in some way   ',
                        style: TextStyle(
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
                      title: const Text('Nearly Everyday'),
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
          )


      ),
      floatingActionButton:  ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Question11()),
            );
          },
          child: const Text("Next")
      ),

    );
  }
}
