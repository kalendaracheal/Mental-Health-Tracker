import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:mentalhealthtracker/Contollers/memories_controller.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Home.dart';
import 'package:mentalhealthtracker/widget/Journal_Card.dart';

class Memories extends StatefulWidget {
  const Memories({Key? key}) : super(key: key);

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          '                     Memories',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700]),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [

          GetBuilder<MemoriesController>(
              init: MemoriesController(),
              builder: (value) {
                return Column(
                  children: List.generate(value.memoriesItems.length, (index) {
                    final item = value.memoriesItems[index];
                    return JournalCard(title: item.title, notes: item.notes);
                  }),
                );
              }),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,

    );
  }
}
