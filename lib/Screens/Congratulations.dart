import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(

            appBar: AppBar(
                title: Text('Mental Health Tracker'),
                        ),
         // backgroundColor: Colors.pinkAccent[100],
          body: Center(

            child: Column(
              children: [
                SizedBox(height: 40,),
                Text('Congratulations',
                  style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),

                SizedBox(height: 20,),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('/images/mht.png'),
                ),
                SizedBox(height: 20,),
                Text('You just finished your self assesment quiz now!!  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black87
                    )),
                SizedBox(height: 20,),
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
                  child: Text('Done'),
                  color: Colors.deepPurpleAccent[100],
    ),

              ],
            ),

            ),

                    ),
        ConfettiWidget(
            confettiController: myController
        ),
                ],
    );

  }
}
