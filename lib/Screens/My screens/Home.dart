import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/CreatePasscode.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Journal.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Quiz.dart';
import 'package:mentalhealthtracker/page/Selfcare.dart';
import 'package:mentalhealthtracker/page/chats_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {

  int selectedIndex;
   Home({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> screens = [

      const Quiz(),
     const Selfcare(),
    const PasscodeCheck(),
    const ChatsPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xFFE1F5FE),

      body: screens[widget.selectedIndex],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(

                GoogleFonts.balsamiqSans( fontSize: 14 ),
            )
        ),
        child: NavigationBar(
          height: 60,
          selectedIndex: widget.selectedIndex,
          backgroundColor: Colors.blue.shade100,
         // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (selectedIndex) =>
              setState(() => widget.selectedIndex = selectedIndex),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home, color: Colors.cyan,),
                label: 'Home'
            ),
            NavigationDestination(
                icon: Icon(Icons.self_improvement),
                selectedIcon: Icon(Icons.self_improvement, color: Colors.cyan,),
                label: 'Self care'
            ),
            NavigationDestination(
                icon: Icon(Icons.note_alt_outlined),
                selectedIcon: Icon(Icons.note_alt, color: Colors.cyan),
                label: 'Journal'
            ),
            NavigationDestination(
                icon: Icon(Icons.question_answer_outlined),
                selectedIcon: Icon(Icons.question_answer, color: Colors.cyan),
                label: 'Professional Help'
            )
          ],
        ),
      ),

    );
  }
}


class PasscodeCheck extends StatefulWidget {
  const PasscodeCheck({Key? key}) : super(key: key);

  @override
  State<PasscodeCheck> createState() => _PasscodeCheckState();
}

class _PasscodeCheckState extends State<PasscodeCheck> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authCheck();
  }

  authCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString('storedPasscode') == null){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const  CreatePasscode()),
      );
    }
    else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const  Journal()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
