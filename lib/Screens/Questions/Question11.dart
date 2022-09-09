// ignore_for_file: constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Congratulations.dart';

enum SingingCharacter { not_difficult_all, somewhat_difficult, very_difficult , extremely_difficult }

class Question11 extends StatefulWidget {
  const Question11({Key? key}) : super(key: key);

  @override
  State<Question11> createState() => _Question11State();
}

class _Question11State extends State<Question11> {
  SingingCharacter? _character = SingingCharacter.not_difficult_all;

  var child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      body: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 60, right: 60, top: 20),

                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text('Question 10',
                      style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                    const SizedBox(height: 10,),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/mht.png'),
                    ),
                    const SizedBox(height: 10,),
                    Text('If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?  ',
                        style: GoogleFonts.balsamiqSans(fontSize: 17.0, color: Colors.black87)),
                    const SizedBox(height: 10,),

                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 100, right: 20,top: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Not difficult at all '),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.not_difficult_all,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Somewhat difficult '),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.somewhat_difficult,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Very difficult'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.very_difficult,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Extremely difficult'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.extremely_difficult,
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
              MaterialPageRoute(builder: (context) => const Congratulations()),
            );

          },
          child: const Text("Next")
      ),

    );
  }
}
