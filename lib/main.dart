//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/page/chats_page.dart';
//import 'package:video_player/video_player.dart';
//import 'package:mentalhealthtracker/page/chats_page.dart';

import 'Screens/Login.dart';



void main(){
  runApp( MyApp());
}



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
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // void initState(){
  //   super.initState();
  //   //upload();
  //   mychat();
  // }
  // Future mychat() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  //   final refUser = FirebaseFirestore.instance.collection('users').doc();
  //   await refUser.set({'Username': 'Alex'});
  //   options: const FirebaseOptions(
  //     apiKey: "AIzaSyA3oMq9-4YRKQYUzTn-5CH-mPdC0iZT0e0", // Your apiKey
  //     appId: "1:492379073970:android:7fd28abd351ab5a45208ab", // Your appId
  //     messagingSenderId: "492379073970", // Your messagingSenderId
  //     projectId: "mental-health-tracker-01", // Your projectId
  //   );
  //  options: DefaultFirebaseOptions.currentPlatform;
  //   runApp(const MyApp());
  // }
  // Future upload() async{
  //   await Firebase.initializeApp();
  //
  //   //Upload document to firestore
  //   final refUser = FirebaseFirestore.instance.collection('users').doc();
  //   await refUser.set({'username': 'alex'});
  // }

  @override

  Widget build(BuildContext context) {

    return  Scaffold(
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




