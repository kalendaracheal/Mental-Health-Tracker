import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mentalhealthtracker/Screens/Congratulations.dart';
import 'package:mentalhealthtracker/Screens/Home.dart';
import 'package:mentalhealthtracker/Screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/Question1.dart';

class Quiz extends StatefulWidget {

  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Padding(padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(height: 10,),
                      Text('Mental Health Tracker',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
                      ),
                      SizedBox(height: 40,),
                      Text('Welcome Back',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black54),),
                      SizedBox(height: 30,),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('/images/mht.png'),
                      ),
                      SizedBox(height: 20,),
                      Text('Hey Samson, Do you want to check in today?',
                        style: TextStyle( fontSize: 17.0),),

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
