import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class JournalCard extends StatelessWidget {
  final String title;
  final String notes;

  const JournalCard({required this.title, required this.notes,  Key? key,}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);

    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        leading: const Icon(Icons.wallet),
        tileColor: const Color(0xFFE1F5FE),
        title:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$title ',
              style:  GoogleFonts.balsamiqSans(fontSize: 18, fontWeight: FontWeight.bold )),
        ),
        subtitle:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(notes,
            style: GoogleFonts.balsamiqSans( fontSize: 16),),
        ),
        textColor: Colors.black,
        trailing: Text(formattedDate,
            style: GoogleFonts.balsamiqSans(fontSize: 14.0, color: Colors.black54)
        ),

      ),

    );

  }

}
