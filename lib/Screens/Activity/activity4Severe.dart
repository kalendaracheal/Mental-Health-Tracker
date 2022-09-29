import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Activity/art.dart';
import 'package:mentalhealthtracker/Screens/Activity/chores.dart';
import 'package:mentalhealthtracker/Screens/Activity/cooking.dart';
import 'package:mentalhealthtracker/Screens/Activity/massage.dart';
import 'package:mentalhealthtracker/Screens/Activity/movie.dart';
import 'package:mentalhealthtracker/Screens/Activity/take_a_walk.dart';

import '../My screens/home.dart';
import 'bath.dart';
import 'exercise.dart';
import 'games.dart';
import 'gardening.dart';
import 'have-A-Bite.dart';
import 'meditation.dart';
import 'music.dart';
import 'read.dart';
import 'swimming.dart';
import 'yoga.dart';

class Activities4Severity extends StatefulWidget {
  const Activities4Severity({Key? key}) : super(key: key);

  @override
  State<Activities4Severity> createState() => _Activities4SeverityState();
}

class _Activities4SeverityState extends State<Activities4Severity> {
  var borderRadius = const BorderRadius.all(Radius.circular(12));
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE3F2FD),
        // appBar: AppBar(
        //   leading: const BackButton(
        //     color: Colors.black,
        //   ),
        //   title: Text('Recommended Activities',
        //       style: GoogleFonts.varelaRound(
        //           fontWeight: FontWeight.bold, fontSize: 20)),
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        body: Center(
                child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 60, top: 40, bottom: 20),
                child: Text('Recommended Activities',
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Consider visiting a counsellor, psychiatrist or a therapist. \n',
                      style: GoogleFonts.balsamiqSans(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'You are great, thinking positively by pondering on all the good things you have, the best part of the day and all the people that love you is what is best for now \n\n Remember its a new day, enjoy everything about it \n\n Consider these recommended activities to proceed with the day relaxed and positive.',
                      style: GoogleFonts.balsamiqSans(
                          fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
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
                      MaterialPageRoute(
                          builder: (context) => const TakeAwalk()),
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
                      MaterialPageRoute(
                          builder: (context) => const Meditation()),
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
              // // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              //   child: ListTile(
              //     title: Text(
              //       'Swimming',
              //       style: GoogleFonts.varelaRound(
              //           fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //     tileColor: Colors.lightBlueAccent[100],
              //     subtitle: Text(
              //         '''The beach can be an underrated spot, especially when it’s not summertime. ''',
              //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              //     contentPadding: const EdgeInsets.all(10.0),
              //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              //     selectedTileColor: Colors.orange[100],
              //     selected: active,
              //     trailing: const Icon(Icons.chevron_right),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const Swimming()),
              //       );
              //     },
              //   ),
              // ),
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
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              //   child: ListTile(
              //     title: Text(
              //       'Gardening',
              //       style: GoogleFonts.varelaRound(
              //           fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //     tileColor: Colors.lightBlueAccent[100],
              //     subtitle: Text(
              //         'Nature is beautiful and great at renewing your mind...',
              //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              //     contentPadding: const EdgeInsets.all(10.0),
              //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              //     selectedTileColor: Colors.orange[100],
              //     selected: active,
              //     trailing: const Icon(Icons.chevron_right),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const Gardening()),
              //       );
              //     },
              //   ),
              // ),

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
                  subtitle: Text(
                      'It can be painting, making crotchets, drawing...',
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
              // // Padding(
              // //   padding:
              // //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              // //   child: ListTile(
              // //     title: Text(
              // //       'Video Games',
              // //       style: GoogleFonts.varelaRound(
              // //           fontWeight: FontWeight.bold, fontSize: 17),
              // //     ),
              // //     tileColor: Colors.lightBlueAccent[100],
              // //     subtitle: Text('It is great way of relaxing your mind',
              // //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              // //     contentPadding: const EdgeInsets.all(10.0),
              // //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              // //     selectedTileColor: Colors.orange[100],
              // //     selected: active,
              // //     trailing: const Icon(Icons.chevron_right),
              // //     onTap: () {
              // //       Navigator.push(
              // //         context,
              // //         MaterialPageRoute(builder: (context) => const Games()),
              // //       );
              // //     },
              // //   ),
              // // ),
              // // //Cooking
              // // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              //   child: ListTile(
              //     title: Text(
              //       'Cook a meal',
              //       style: GoogleFonts.varelaRound(
              //           fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //     tileColor: Colors.lightBlueAccent[100],
              //     subtitle: Text('Being creative and keeping yourself busy',
              //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              //     contentPadding: const EdgeInsets.all(10.0),
              //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              //     selectedTileColor: Colors.orange[100],
              //     selected: active,
              //     trailing: const Icon(Icons.chevron_right),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const Cooking()),
              //       );
              //     },
              //   ),
              // ),
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
                      MaterialPageRoute(
                          builder: (context) => const HaveAbite()),
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
              // //Massage
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              //   child: ListTile(
              //     title: Text(
              //       'Get a Massage',
              //       style: GoogleFonts.varelaRound(
              //           fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //     tileColor: Colors.lightBlueAccent[100],
              //     subtitle: Text('It is great way of relaxing your mind',
              //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              //     contentPadding: const EdgeInsets.all(10.0),
              //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              //     selectedTileColor: Colors.orange[100],
              //     selected: active,
              //     trailing: const Icon(Icons.chevron_right),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const Massage()),
              //       );
              //     },
              //   ),
              // ),
              // //Games
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              //   child: ListTile(
              //     title: Text(
              //       'Game',
              //       style: GoogleFonts.varelaRound(
              //           fontWeight: FontWeight.bold, fontSize: 17),
              //     ),
              //     tileColor: Colors.lightBlueAccent[100],
              //     subtitle: Text('Challenge your mind to be creative',
              //         style: GoogleFonts.balsamiqSans(fontSize: 16)),
              //     contentPadding: const EdgeInsets.all(10.0),
              //     shape: RoundedRectangleBorder(borderRadius: borderRadius),
              //     selectedTileColor: Colors.orange[100],
              //     selected: active,
              //     trailing: const Icon(Icons.chevron_right),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const Games()),
              //       );
              //     },
              //   ),
              // ),

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
              //             builder: (context) => const Activities4Mild()),
              //       );
              //     },
              //   ),
              // ),

               const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(" N e x t ",
                  style: GoogleFonts.balsamiqSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.black87)),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ])),
           
         );
  }
}
