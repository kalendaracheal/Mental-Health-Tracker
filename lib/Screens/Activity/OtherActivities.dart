import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtherActivities extends StatelessWidget {
  const OtherActivities({Key? key}) : super(key: key);

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
    body: Column(
      children: [
        Text('Other Activities',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),

      ],

    )
        );
  }
}
