import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Stack(
      children: [
        Image.asset(
        '/images/bg1.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      Scaffold(
        //backgroundColor: const Color(0xFFE1F5FE),
      backgroundColor: Colors.transparent,

        body: ListView(
          children: [
            const SizedBox(height: 20,),
            const Center(
              child: const Text(  'My Space', style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),

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
            const SizedBox(height: 100.0,)
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,top: 5.0, left: 10.0),
                  child: Text(
                      'You got this, just breath...',
                      style: GoogleFonts.balsamiqSans( fontSize: 20, color: Colors.blue )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,top: 5.0, right: 10.0),
                  child: IconButton(
                    color: Colors.blue,
                    hoverColor: Colors.lightBlueAccent[100],
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // ignore: prefer_const_constructors
                            builder: (context) => Home()),
                      );
                    },

                    icon: const Icon(Icons.check),
                  ),
                ),
              ]),


        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,

      ),
        ]
    );
  }
}
