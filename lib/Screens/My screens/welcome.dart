// ignore_for_file: file_names

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/home.dart';

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

        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0,),
              SafeArea(
                child: Text('Mental Health Tracker',
                    style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 26)
                ),
              ),
              const SizedBox(height: 30.0,),
              Text(
                        "Hello Dear, I am delighted to have you here",
                        style: GoogleFonts.balsamiqSans( fontSize: 17, color: Colors.black87),),
             
              const AvatarGlow(
                endRadius: 160, glowColor: Colors.cyan,
                duration: Duration(milliseconds: 3000),
                repeatPauseDuration: Duration(milliseconds: 100),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),),

              const SizedBox(height: 10.0,),
              Text("I am MHT your virtual friend",
                style: GoogleFonts.balsamiqSans( fontSize: 18),),
              const SizedBox(height: 30.0,),
              // MaterialButton(
              //     onPressed: (){
              //   FirebaseAuth.instance.signOut();
              // },
              // color: Colors.purpleAccent[100],
              //     child: Text('Sign out')
              // ),


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(120, 40),
                  primary: Colors.blue.shade400,
                  textStyle: GoogleFonts.balsamiqSans( fontSize: 16, color: Colors.black45),

                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()
                    ));
                  },
                  child: const Icon(Icons.arrow_forward)
              ),

            ],
          ),
        ),


      ),

    );
  }
}
