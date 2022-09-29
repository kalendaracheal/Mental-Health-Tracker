import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Questions/question1.dart';
import 'package:mentalhealthtracker/auth_gate.dart';

import '../../page/videoplayer.dart';
import '../../widget/list_button.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    Key? key,
  }) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var borderRadius = const BorderRadius.all(Radius.circular(12));
  bool active = false;

  FirebaseAuth signedin = FirebaseAuth.instance;
  FirebaseAuth signout = FirebaseAuth.instance;

  signingout() async {
    await signout.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        actions: [
            PopupMenuButton(
              offset: const Offset(0, 40),
              onCanceled: () {},
              elevation: 40,
              icon: const Icon(Icons.menu),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Signed in as: ${signedin.currentUser!.email}",
                        style: GoogleFonts.balsamiqSans( fontSize: 16),),
                      ),
                    PopupMenuItem(
                      value: 2,
                      child: ListButton(
                        label: 'Sign Out',
                        icon: Icons.outbond_outlined,
                        onTap: () {
                          signingout();
                          // Navigator.of(context).pop();
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AuthGate()),
                              );
                        },
                      ),
                    ),
                  ])
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Mental Health Tracker',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold, fontSize: 26)),
                    
                    const SizedBox(
                      height: 30,
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('/images/mht.png'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Do you want to check in today? ',
                              style: GoogleFonts.balsamiqSans(fontSize: 17.0)),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                              MaterialPageRoute(builder: ( (context) => const Question1()))
                              );
                            },
                            child: Text(
                              'Start Now',
                              style: GoogleFonts.balsamiqSans(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/meditation1.jpg'),
                ),
                title: Text(
                  'Meditation',
                  style: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                tileColor: Colors.lightBlueAccent[100],
                subtitle: Text(
                    'Explore and see how meditation cam help relax your mind',
                    style: GoogleFonts.balsamiqSans(fontSize: 16)),
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: borderRadius),
                selectedTileColor: Colors.orange[100],
                selected: active,
                trailing: const Icon(Icons.play_circle_outline_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meditate()),
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/anxiety.jpg'),
                ),
                title: Text(
                  'Anxiety Loop',
                  style: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                tileColor: Colors.lightBlueAccent[100],
                subtitle: Text('Know how to control yourself when anxious',
                    style: GoogleFonts.balsamiqSans(fontSize: 16)),
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: borderRadius),
                selectedTileColor: Colors.orange[100],
                selected: active,
                trailing: const Icon(Icons.play_circle_outline_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Videocall()),
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/worry.jpg'),
                ),
                title: Text(
                  'Over coming worry',
                  style: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                tileColor: Colors.lightBlueAccent[100],
                subtitle: Text('A mindful way out of anxiety',
                    style: GoogleFonts.balsamiqSans(fontSize: 16)),
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: borderRadius),
                selectedTileColor: Colors.orange[100],
                selected: active,
                trailing: const Icon(Icons.play_circle_outline_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Videocall2()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton:  ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => const Question1()),
      //       );
      //     },
      //     child: const Text("Start Now")
      // ),
    );
  }
}
