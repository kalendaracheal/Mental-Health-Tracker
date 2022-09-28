import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Activity/art.dart';
import 'package:mentalhealthtracker/Screens/Activity/chores.dart';
import 'package:mentalhealthtracker/Screens/Activity/cooking.dart';
import 'package:mentalhealthtracker/Screens/Activity/massage.dart';
import 'package:mentalhealthtracker/Screens/Activity/movie.dart';

import '../Screens/Activity/bath.dart';
import '../Screens/Activity/games.dart';
import '../Screens/Activity/have-A-Bite.dart';
import '../Screens/Activity/music.dart';

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
          title: Text('Recommended  Other Activities',
              style: GoogleFonts.varelaRound(
                  fontWeight: FontWeight.bold, fontSize: 20)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'In door Activities',
              style: GoogleFonts.varelaRound(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.lightBlueAccent),
            ),
          ),
          //Art
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
              subtitle: Text('It can be painting, making crotchets, drawing...',
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
          //Music
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: ListTile(
              title: Text(
                'Listen to Music',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
              subtitle: Text(
                  'music can change the way we act, feel and think. ',
                  style: GoogleFonts.balsamiqSans(fontSize: 16)),
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Music()),
                );
              },
            ),
          ),
          //Video Games
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: ListTile(
              title: Text(
                'Video Games',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
              subtitle: Text('It is great way of relaxing your mind',
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
          //Cooking
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
              subtitle: Text('Being creative and keeping yourself busy',
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
          //Bath
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
          //Movies
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
              subtitle: Text('Get lost in a great movie or documentary',
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
          // Have a bite
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
              subtitle: Text('Treat yourself to a nice meal',
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
          //Chores
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
              subtitle: Text('Re-organising your home is therapeutic',
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
          //Massage
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
              subtitle: Text('It is great way of relaxing your mind',
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
          //Games
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
              subtitle: Text('Challenge your mind to be creative',
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

          //Other activities
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: ListTile(
              title: Text(
                'Other',
                style: GoogleFonts.varelaRound(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              tileColor: Colors.lightBlueAccent[100],
              subtitle: Text(
                  'We have a wide range of things we can do make our day better',
                  style: GoogleFonts.balsamiqSans(fontSize: 16)),
              contentPadding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Activities_page()),
                );
              },
            ),
          ),
        ])));
  }
}
