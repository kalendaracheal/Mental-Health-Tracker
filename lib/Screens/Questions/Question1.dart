// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Question2.dart';
enum SingingCharacter { awesome, great, fair, bad, veryBad }

class Question1 extends StatefulWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  SingingCharacter? _character = SingingCharacter.awesome;

  // ignore: prefer_typing_uninitialized_variables
  var child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.only(left: 100, right: 100, top: 20),

                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Text('Take Quiz',
                        style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                      const SizedBox(height: 10,),
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('/images/mht.png'),
                      ),

                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
                  child: Column(
                    children:  [
                      const SizedBox(height: 10,),
                      const Text('Welcome Back',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black54),),
                      const SizedBox(height: 10,),
                      Text('Hey Samson, How are you doing today?',
                          style: GoogleFonts.balsamiqSans(fontSize: 17.0)),
                      const SizedBox(height: 10,),
                    ],
                  )


                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, right: 20,top: 10),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Awesome'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.awesome,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Great'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.great,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Fair'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.fair,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Bad'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.bad,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Very Bad'),
                        leading: Radio<SingingCharacter>(
                          value: SingingCharacter.veryBad,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Question2()),
            );
          },
          child: const Text("Continue")
      ),
      //const SizedBox(height: 20),

    );


  }
}
