//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//import 'package:mentalhealthtracker/page/chats_page.dart';

import 'Screens/Login.dart';



void main(){
  runApp(const MyApp());
}

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   final refUser = FirebaseFirestore.instance.collection('user').doc();
//   await refUser.set({'Username': 'Alex'});
//   options: const FirebaseOptions(
//     apiKey: "AIzaSyA3oMq9-4YRKQYUzTn-5CH-mPdC0iZT0e0", // Your apiKey
//     appId: "1:492379073970:android:7fd28abd351ab5a45208ab", // Your appId
//     messagingSenderId: "492379073970", // Your messagingSenderId
//     projectId: "mental-health-tracker-01", // Your projectId
//   );
//   //options: DefaultFirebaseOptions.currentPlatform,
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mental Health Tracker',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Mental Health Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override

  Widget build(BuildContext context) {

    return const Scaffold(
        backgroundColor: Color(0xFFBBDEFB),
        // appBar: AppBar(
        //
        //   title: Text(widget.title),
        //
        // ),

        body: Login()
       //body: ChatsPage()
    );
  }
}




