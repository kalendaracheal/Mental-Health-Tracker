// ignore: file_names
// ignore_for_file: file_names

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  final ConfettiController myController =
      ConfettiController(duration: const Duration(seconds: 30));
  bool is_playing = false;
  @override
  void initState() {
    super.initState();
    myController.play();
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          backgroundColor:  const Color(0xFFE1F5FE),

          body: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text('Mental Health Tracker',
                style: GoogleFonts.varelaRound( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),

              const SizedBox(
                height: 50,
              ),
              Text(
                'Congratulations',
                style: GoogleFonts.balsamiqSans(
                    fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue[700]
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('/images/mht.png'),
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                    'You just finished your self assesment quiz now!!  ',
                    style: GoogleFonts.balsamiqSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black87)),
              ),
            ],
          ),
          floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Home()),
                );
              },
              child: const Text("Next")),
        ),
        ConfettiWidget(
          confettiController: myController,
          blastDirectionality: BlastDirectionality.explosive,
          emissionFrequency: 0.1,
        ),
      ],
    );
  }
}
