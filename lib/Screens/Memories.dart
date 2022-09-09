import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/widget/square.dart';

class Memories extends StatefulWidget {
  const Memories({Key? key,  required this.title, required this.notes}) : super(key: key);
  final String title;
  final String notes;

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {


  @override
  Widget build(BuildContext context) {
    String title = 'title' ;
    String notes  = 'notes';

    return JournalCard(
      title: 'Monday',
      notes: 'Great day',
    );



  }
}
