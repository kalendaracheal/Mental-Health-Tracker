import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Activity/Read.dart';
import 'package:mentalhealthtracker/Screens/Activity/Swimming.dart';
import 'package:mentalhealthtracker/Screens/Activity/Take_a_walk.dart';
import 'package:mentalhealthtracker/Screens/Home.dart';

class Activities_page extends StatefulWidget {
  const Activities_page({Key? key}) : super(key: key);

  @override
  State<Activities_page> createState() => _Activities_pageState();
}

class _Activities_pageState extends State<Activities_page> {
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
          title: Text(
            '                     Activities',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700]),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: ListView(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: ListTile(
              title: Text(
                'Take a walk',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
              subtitle: Text(
                  '''Getting outside in some fresh air is a great way to boost mood.''',
                  style: GoogleFonts.balsamiqSans(fontSize: 16)),
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange,
              selected: active,
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Take_a_walk()),
                );
              },
            ),
          ),
                Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                   child: ListTile(
                     title: Text(
                'Journal',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
                    subtitle: Text(
                  'You can jot down your thoughts on how this day has been so far',
                  style: GoogleFonts.balsamiqSans(fontSize: 16)),
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
                    trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ),

              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Swimming',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      '''The beach can be an underrated spot, especially when it’s not summertime. ''',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Swimming()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Reading in the park',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Reading is a best way to shift your mind from all worries',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Read()),
                    );
                  },
                ),
              ),
        ])));
  }
}
