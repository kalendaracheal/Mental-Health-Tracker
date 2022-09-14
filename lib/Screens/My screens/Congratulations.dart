// ignore: file_names
// ignore_for_file: file_names

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../page/Selfcare.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  final myController =  ConfettiController();

  bool is_playing = false;
  @override
  void dispose(){
    super.dispose();
    myController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        ConfettiWidget(
          confettiController: myController,
          blastDirectionality: BlastDirectionality.explosive,
        ),
        Scaffold(

            appBar: AppBar(
                title: Text('Mental Health Tracker',
        style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
    ),

         // backgroundColor: Colors.purpleAccent[100],
          body: Center(

            child: Column(
              children: [
                const SizedBox(height: 40,),
                Text('Congratulations',
                  style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                const SizedBox(height: 20,),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                const SizedBox(height: 20,),
                const Text('You just finished your self assesment quiz now!!  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black87
                    )),

                const SizedBox(height: 20,),
                MaterialButton(
                            onPressed: (){
                              if(is_playing){
                              myController.stop();
                              }
                              else {
                              myController.play();
                                }
                         is_playing = !is_playing;
                        },
                  color: Colors.deepPurpleAccent[100],
                  child: const Text('Done'),
    ),

              ],
            ),

            ),
          floatingActionButton:  ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Selfcare()),
                );
              },
              child: const Text("Next")
          ),
                    ),

                ],
    );

  }
}