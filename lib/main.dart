//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mentalhealthtracker/auth_gate.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//import 'package:mentalhealthtracker/page/chats_page.dart';

// @override
// void initState(){
//   WidgetsBinding.instance.addPostFrameCallback((_) {
//     print("WidgetsBinding");
//   });
// }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final refUser = FirebaseFirestore.instance.collection('users').doc();
  // await refUser.set({'idUser': '001', 'name': 'Baraka Obama', 'urlAvatar': 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/President_Barack_Obama.jpg/480px-President_Barack_Obama.jpg', 'lastMessageTime': DateTime.now()});
  //  await FirebaseApi.addRandomUsers(Users.initUsers);

  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xFFBBDEFB),
        body: AuthGate());
  }
}
