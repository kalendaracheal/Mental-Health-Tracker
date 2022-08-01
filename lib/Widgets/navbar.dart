import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A&D health',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

    );
  }
}
