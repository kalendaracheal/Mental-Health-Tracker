import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Activity/Art.dart';
import 'package:mentalhealthtracker/Screens/Activity/Chores.dart';
import 'package:mentalhealthtracker/Screens/Activity/Cooking.dart';
import 'package:mentalhealthtracker/Screens/Activity/Exercise.dart';
import 'package:mentalhealthtracker/Screens/Activity/Gardening.dart';
import 'package:mentalhealthtracker/Screens/Activity/Massage.dart';
import 'package:mentalhealthtracker/Screens/Activity/Meditation.dart';
import 'package:mentalhealthtracker/Screens/Activity/Movie.dart';
import 'package:mentalhealthtracker/Screens/Activity/Read.dart';
import 'package:mentalhealthtracker/Screens/Activity/Swimming.dart';
import 'package:mentalhealthtracker/Screens/Activity/Take_a_walk.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Home.dart';

import '../Screens/Activity/Bath.dart';
import '../Screens/Activity/Games.dart';
import '../Screens/Activity/Have-A-Bite.dart';
import '../Screens/Activity/Yoga.dart';

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
        title: Text('Activities',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 0,
        backgroundColor:  Colors.transparent,
      ),
        body: Center(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Out door Activities',
                  style: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold, fontSize: 17, color: Colors.blue[300]),
                ),
              ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: ListTile(
              title: Text(
                'Take a walk/ Go Jogging',
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
                'Gardening',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
                    subtitle: Text(
                  'Nature is beautiful and great at renewing your mind...',
                  style: GoogleFonts.balsamiqSans(fontSize: 16)),
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
                    trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gardening()),
                );
              },
            ),
          ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Meditation',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Meditation help you ponder on how you feel',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Meditation()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Exercise',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Exercise is good for both your physical and mental well being.',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Yoga',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Yoga is a great mindful practice',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Yoga()),
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
                      MaterialPageRoute(builder: (context) => const Swimming()),
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
                      MaterialPageRoute(builder: (context) => const Read()),
                    );
                  },
                ),
              ),
              Text(
                'In door Activities',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17, color: Colors.lightBlueAccent[200]),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Cook a meal',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Being creative and keeping yourself busy',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cooking()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Read a book/ newspaper',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Sitting with a good book is one of the simple activities you can do',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Read()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Art and crafts',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'It can be painting, making chrochets, drawing...',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Art()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Do house chores',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Re-organising your home is therapeutic',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Chores()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Take a bath',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'It will make you comfortable and help your mind to relax',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bath()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Watch a movie',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Get lost in a great movie or documentary',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Movie()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Have a bite',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'Treat yourself to a nice meal',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Have_A_bite()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Get a Massage',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'It is great way of relaxing your mind',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Massage()),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Game',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  tileColor: Colors.lightBlueAccent[100],
                  subtitle: Text(
                      'It is great way of relaxing your mind',
                      style: GoogleFonts.balsamiqSans(fontSize: 16)),
                  contentPadding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  selectedTileColor: Colors.orange[100],
                  selected: active,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Games()),
                    );
                  },
                ),
              ),


        ])));
  }
}
