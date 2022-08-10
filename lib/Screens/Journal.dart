// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Question2.dart';


class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1F5FE),
      appBar: AppBar(
        title: const Text('Journal'),
      ),
      body: Container(
          // decoration: const BoxDecoration(
          //     // image: DecorationImage(
          //     //     image: AssetImage('/images/bg.png'),
          //     //     fit: BoxFit.cover
          //     // )
          // ),
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 40),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                 Text('Welcome Back',
                    style: GoogleFonts.varelaRound(fontSize: 16, color: Colors.blue)),
                const SizedBox(height: 10,),
                const Text('Daily Journal',
                  style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),

                //  Image.asset('assets/images/mht.png'),
                const SizedBox(height: 10,),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                const SizedBox(height: 20,),
                 Text('Enter Passcode to proceed',
                    style: GoogleFonts.balsamiqSans(fontSize: 16) ),

                const SizedBox(height: 40,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your passcode',

                    border: OutlineInputBorder(),


                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
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


    );
  }
}
