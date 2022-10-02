import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Activity/art.dart';
import 'package:mentalhealthtracker/Screens/Activity/chores.dart';
import 'package:mentalhealthtracker/Screens/Activity/cooking.dart';
import 'package:mentalhealthtracker/Screens/Activity/exercise.dart';
import 'package:mentalhealthtracker/Screens/Activity/gardening.dart';
import 'package:mentalhealthtracker/Screens/Activity/massage.dart';
import 'package:mentalhealthtracker/Screens/Activity/meditation.dart';
import 'package:mentalhealthtracker/Screens/Activity/movie.dart';
import 'package:mentalhealthtracker/Screens/Activity/read.dart';
import 'package:mentalhealthtracker/Screens/Activity/swimming.dart';
import 'package:mentalhealthtracker/Screens/Activity/take_a_walk.dart';

import '../Screens/Activity/bath.dart';
import '../Screens/Activity/games.dart';
import '../Screens/Activity/have-A-Bite.dart';
import '../Screens/Activity/music.dart';
import '../Screens/Activity/yoga.dart';

class Activitiespage extends StatefulWidget {
  const Activitiespage({Key? key}) : super(key: key);

  @override
  State<Activitiespage> createState() => _ActivitiespageState();
}

class _ActivitiespageState extends State<Activitiespage> {
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
          title: Text('Recommended Activities',
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
                  'You can check out these activities and see how they are useful for your mental health',
                  style: GoogleFonts.balsamiqSans(
                      fontSize: 16,
                      color: Colors.black87),
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Out door Activities',
              style: GoogleFonts.varelaRound(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.blueAccent),
            ),
          ),
          //Take a walk
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
              selectedTileColor: Colors.white60,
              selected: active,
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TakeAwalk()),
                );
              },
            ),
          ),
          //Meditation
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
              subtitle: Text('Meditation help you ponder on how you feel',
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
          //Exercise
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
          //Yoga
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
              subtitle: Text('Yoga is a great mindful practice',
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
          //Swimming
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
          //Read
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
          //  Gardening
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
                  MaterialPageRoute(builder: (context) => const HaveAbite()),
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
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          //   child: ListTile(
          //     title: Text(
          //       'Other',
          //       style: GoogleFonts.varelaRound(
          //           fontWeight: FontWeight.bold, fontSize: 17),
          //     ),
          //     tileColor: Colors.lightBlueAccent[100],
          //     subtitle: Text(
          //         'We have a wide range of things we can do make our day better',
          //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
          //     contentPadding: const EdgeInsets.all(10.0),
          //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
          //     selectedTileColor: Colors.orange[100],
          //     selected: active,
          //     trailing: const Icon(Icons.chevron_right),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const Activitiespage()),
          //       );
          //     },
          //   ),
          // ),
              SizedBox(height: 20.0),
        ])));
  }
}
