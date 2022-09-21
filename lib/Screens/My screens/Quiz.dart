import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Questions/Question1.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key,
  }) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:  const Color(0xFFE1F5FE),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Padding(padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 10,),
                      Text('Mental Health Tracker',
                          style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 26)
                      ),
                      const SizedBox(height: 40,),
                      const Text('Welcome Back',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black54),),
                      const SizedBox(height: 30,),
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('/images/mht.png'),
                      ),
                      const SizedBox(height: 20,),
                      Text('Hey Samson, Do you want to check in today?',
                        style: GoogleFonts.balsamiqSans(fontSize: 17.0)),

                    ],
                  )


              ),


            ],
          )


      ),
        floatingActionButton:  ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Question1()),
              );
            },
            child: const Text("Start Now")
        ),

    );
  }
}
