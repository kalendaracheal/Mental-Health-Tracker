import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class JournalCard extends StatefulWidget {
  final String title;
  final String notes;
  final String journaldate;

  const JournalCard({
    required this.title,
    required this.notes,
    required this.journaldate,
    Key? key,
  }) : super(key: key);

  @override
  State<JournalCard> createState() => _JournalCardState();
}

class _JournalCardState extends State<JournalCard> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        leading: const Icon(Icons.wallet, color: Colors.white),
        tileColor: const Color(0xFFE1F5FE),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${widget.title} ',
              style: GoogleFonts.balsamiqSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.notes,
            style:
                GoogleFonts.balsamiqSans(fontSize: 16, color: Colors.white70),
          ),
        ),
        textColor: Colors.black,
        trailing: Text(widget.journaldate.toString(),
            style:
                GoogleFonts.balsamiqSans(fontSize: 14.0, color: Colors.black87, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
