import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mentalhealthtracker/Screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/Question1.dart';
import 'package:mentalhealthtracker/Screens/Quiz.dart';

import 'Congratulations.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE1F5FE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const SizedBox(height: 20.0),
            const Text('Mental Health Tracker',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
            ),
            const SizedBox(height: 20.0),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('/images/mht.png'),
            ),
           const SizedBox(height: 18.0),
           Padding(
             padding: const EdgeInsets.only(left: 60.0, right: 60.0),
             child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children:[
                    Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        color: Colors.lightBlueAccent[100],
                      ),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(Icons.question_answer),
                              Text('Quiz',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)

                              ),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 400,
                        height: 70,

                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          color: Colors.lightBlueAccent[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.local_fire_department),
                            Text('Anxiety',
                               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)

                            ),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),

                      ),
                    ),
                    Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        color: Colors.lightBlueAccent[100],
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.personal_injury_outlined),
                          Text('Depression',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)

                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),

                    ),
                    const SizedBox(height: 10,),

                  ]
              ),
           ),
          ],
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
