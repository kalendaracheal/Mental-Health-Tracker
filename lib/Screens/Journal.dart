// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mentalhealthtracker/Screens/Question2.dart';

import 'Congratulations.dart';
import 'Home.dart';
import 'Quiz.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
   int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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

                const Text('Welcome Back',
                    style: TextStyle( fontSize: 16, color: Colors.white60)),
                const SizedBox(height: 10,),
                const Text('Daily Journal',
                  style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),),

                //  Image.asset('assets/images/mht.png'),
                const SizedBox(height: 10,),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                const SizedBox(height: 20,),
                const Text('Enter Passcode to proceed',
                    style: TextStyle( fontSize: 16,  color: Colors.white70)),

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
        bottomNavigationBar: Container(
          //color: Color(0xFFB2EBF2),
          color: Colors.cyan.shade200,

          child:  Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: GNav(
                backgroundColor: Colors.cyan.shade200,
                //backgroundColor: Color(0xFF4DD0E1),
                gap: 8,
                //tabBorderRadius: 10,
                hoverColor: Colors.black26,
                padding: EdgeInsets.all(16.0),
                activeColor: Colors.white,
                tabBackgroundColor: Colors.blueAccent.withOpacity(0.3),
                onTabChange: (index){
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                //tabBackgroundColor: Colors.grey.withOpacity(0.5),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    iconColor: Colors.blue,
                    iconActiveColor: Colors.white,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },


                  ),
                  GButton(
                    icon: Icons.self_improvement_outlined,
                    text: 'Self care',
                    iconColor: Colors.blue,
                    iconActiveColor: Colors.white,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Quiz()));
                    },
                  ),

                  GButton(
                    icon: Icons.note_alt_outlined,
                    text: 'Journal',
                    iconColor: Colors.blue,
                    iconActiveColor: Colors.white,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Journal()));
                    },
                  ),

                  GButton(
                    icon: Icons.chat,
                    iconColor: Colors.blue,
                    iconActiveColor: Colors.white,
                    text: 'Professional Help',
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Congratulations()));
                    },
                  ),

                ]),
          ),
        )

    );
  }
}
