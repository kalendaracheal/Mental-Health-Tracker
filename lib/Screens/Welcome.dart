// ignore_for_file: file_names

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Home.dart';

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


      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0,),
            SafeArea(
              child: Text('Mental Health Tracker',
                  style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 26)
              ),
            ),
            const AvatarGlow(
              endRadius: 180, glowColor: Colors.cyan,
              duration: Duration(milliseconds: 3000),
              repeatPauseDuration: Duration(milliseconds: 200),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('/images/mht.png'),
              ),),
            const SizedBox(height: 10.0,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(120, 40),
                primary: Colors.blue.shade400,
                textStyle: GoogleFonts.balsamiqSans( fontSize: 16, color: Colors.black45),

              ),
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
