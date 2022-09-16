import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Quotes_page.dart';
import 'package:mentalhealthtracker/page/Activities_page.dart';
import 'package:mentalhealthtracker/page/videoplayer.dart';

import '../Screens/My screens/Journal.dart';
import '../Screens/Questions/Question1.dart';

class Selfcare extends StatefulWidget {
  const Selfcare({Key? key}) : super(key: key);

  @override
  State<Selfcare> createState() => _SelfcareState();
}

class _SelfcareState extends State<Selfcare> {
  var borderRadius = const BorderRadius.all(Radius.circular(12));
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('                     Therapy',
          style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),
        elevation: 0,
        backgroundColor:  Colors.transparent,
      ),
      body: Center(
        child: ListView(

              children:[
                //quiz
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('/images/qn.jpg'),
                  ),
                  title:  Text('Take a Quiz',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle:  Text('Would you like to check in today',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange,
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),

                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Question1()),
                    );

                  },
                ),
              ),
                //Journal
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('/images/write.jpg'),
                  ),
                  title: Text('Journal',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text('You can jot down your thoughts on how this day has been so far',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),

                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Journal()),
                    );

                  },
                ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/quote.jpg'),
                    ),
                    title:  Text('Inspirational Quotes',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    tileColor: Colors.lightBlueAccent[100],
                    subtitle:  Text('Fill your thoughts with a positive mind set',
                        style: GoogleFonts.balsamiqSans(fontSize: 16)),
                    contentPadding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    trailing: const Icon(Icons.chevron_right),

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Quotes_page()),
                      );

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/activity.jpg'),
                    ),
                    title:  Text('Activity',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    tileColor: Colors.lightBlueAccent[100],
                    subtitle:  Text('Do something to distract your self from worrying',
                        style: GoogleFonts.balsamiqSans(fontSize: 16)),
                    contentPadding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    trailing: const Icon(Icons.chevron_right),

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Activities_page()),
                      );

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/meditation1.jpg'),
                    ),
                    title: Text('Meditation',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    tileColor: Colors.lightBlueAccent[100],
                    subtitle: Text('Explore and see how meditation cam help relax your mind',
                        style: GoogleFonts.balsamiqSans(fontSize: 16)),
                    contentPadding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    trailing: const Icon(Icons.chevron_right),

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Meditate()),
                      );

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/anxiety.jpg'),
                    ),
                    title:  Text('Anxiety Loop',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    tileColor: Colors.lightBlueAccent[100],
                    subtitle:  Text('Know how to control yourself when anxious',
                        style: GoogleFonts.balsamiqSans(fontSize: 16)),
                    contentPadding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    trailing: const Icon(Icons.chevron_right),

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Videocall()),
                      );

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/worry.jpg'),
                    ),
                    title: Text('Over coming worry',
                      style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    tileColor: Colors.lightBlueAccent[100],
                    subtitle: Text('A mindful way out of anxiety',
                        style: GoogleFonts.balsamiqSans(fontSize: 16)),
                    contentPadding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    trailing: const Icon(Icons.chevron_right),

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Videocall2()),
                      );

                    },
                  ),
                ),



              ]
        )
      ),


    );
  }
}
