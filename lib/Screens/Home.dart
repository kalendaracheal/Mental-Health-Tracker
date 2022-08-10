import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/Quiz.dart';
import 'package:mentalhealthtracker/Screens/Welcome.dart';
import 'Congratulations.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final screens = [

    const Quiz(),
    const Welcome(),
    const Journal(),
    const Congratulations()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
        backgroundColor: const Color(0xFFE1F5FE),

        // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //
      //     children: [
      //       const SizedBox(height: 20.0),
      //       const Text('Mental Health Tracker',
      //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
      //       ),
      //       const SizedBox(height: 20.0),
      //       const CircleAvatar(
      //         radius: 40,
      //         backgroundImage: AssetImage('/images/mht.png'),
      //       ),
      //      const SizedBox(height: 18.0),
      //      Padding(
      //        padding: const EdgeInsets.only(left: 60.0, right: 60.0),
      //        child: Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //
      //             children:[
      //               Container(
      //                 width: 400,
      //                 height: 70,
      //                 decoration: BoxDecoration(
      //                   borderRadius: const BorderRadius.all(Radius.circular(15)),
      //                   color: Colors.lightBlueAccent[100],
      //                 ),
      //                 child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                       children: const [
      //                         Icon(Icons.question_answer),
      //                         Text('Quiz',
      //                             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)
      //
      //                         ),
      //                         Icon(Icons.arrow_forward_ios_rounded)
      //                       ],
      //                     ),
      //
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(vertical: 10.0),
      //                 child: Container(
      //                   width: 400,
      //                   height: 70,
      //
      //                   decoration: BoxDecoration(
      //                     borderRadius: const BorderRadius.all(Radius.circular(15)),
      //                     color: Colors.lightBlueAccent[100],
      //                   ),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                     children: const [
      //                       Icon(Icons.local_fire_department),
      //                       Text('Anxiety',
      //                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)
      //
      //                       ),
      //                       Icon(Icons.arrow_forward_ios_rounded)
      //                     ],
      //                   ),
      //
      //                 ),
      //               ),
      //               Container(
      //                 width: 400,
      //                 height: 70,
      //                 decoration: BoxDecoration(
      //                   borderRadius: const BorderRadius.all(Radius.circular(15)),
      //                   color: Colors.lightBlueAccent[100],
      //                 ),
      //                 child:  Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                   children: const [
      //                     Icon(Icons.personal_injury_outlined),
      //                     Text('Depression',
      //                         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87 ,fontSize: 20)
      //
      //                     ),
      //                     Icon(Icons.arrow_forward_ios_rounded)
      //                   ],
      //                 ),
      //
      //               ),
      //               const SizedBox(height: 10,),
      //
      //             ]
      //         ),
      //      ),
      //     ],
      //   ),

      body: screens[_selectedIndex],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(

                GoogleFonts.balsamiqSans( fontSize: 14 ),
            )
        ),
        child: NavigationBar(
          height: 60,
          selectedIndex: _selectedIndex,
          backgroundColor: Colors.blue.shade100,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (_selectedIndex) =>
              setState(() => this._selectedIndex = _selectedIndex),
          destinations: [
            const NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home'
            ),
            const NavigationDestination(
                icon: Icon(Icons.self_improvement_outlined),
                selectedIcon: Icon(Icons.self_improvement_sharp, color: Colors.blue,),
                label: 'Self care'
            ),
            const NavigationDestination(
                icon: Icon(Icons.note_alt_outlined),
                selectedIcon: Icon(Icons.note_alt),
                label: 'Journal'
            ),
            const NavigationDestination(
                icon: Icon(Icons.question_answer_sharp),
                selectedIcon: Icon(Icons.question_answer),
                label: 'Professional Help'
            )
          ],
        ),
      ),

    );
  }
}
