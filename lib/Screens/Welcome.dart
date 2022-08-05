// ignore_for_file: file_names

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Congratulations.dart';

import 'package:mentalhealthtracker/Screens/Home.dart';
import 'package:mentalhealthtracker/Screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/Question1.dart';


class Welcome extends StatefulWidget {

  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
   backgroundColor: const Color(0xFFE1F5FE),

      // appBar: AppBar(
      //   title: Text('Mental Health Tracker'),
      //
      // ),
      drawer: Drawer(
        child: Container(
          //color: Color(0xFFB3E5FC),
          color: const Color(0xFFB2EBF2),
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                      child: Icon(
                        Icons.home, size: 35,)
                  )
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Welcome page ',
                    style: TextStyle(fontSize: 20 )),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Welcome()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('S e l f  c a r e ',
                    style: TextStyle(fontSize: 20 )),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Welcome()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.note_alt),
                title: const Text('J o u r n a l ',
                    style: TextStyle(fontSize: 20 )),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Journal()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('Q u i z ',
                    style: TextStyle(fontSize: 20 )),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Question1()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.health_and_safety_rounded),
                title: const Text('Professional Help ',
                    style: TextStyle(fontSize: 20 )),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Welcome()));
                },
              )

            ],
          ),
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AvatarGlow(
              endRadius: 200, glowColor: Colors.cyan,
              duration: Duration(milliseconds: 3000),
              repeatPauseDuration: Duration(milliseconds: 200),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('/images/mht.png'),
              ),),
            const SizedBox(height: 40.0,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: const Text("S  k  i  p")
            ),

          ],
        ),


      ),

    );
  }
}
