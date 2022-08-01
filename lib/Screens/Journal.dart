import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Question2.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Learn to Fly'),
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('/images/bg.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 40),

            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const Text('Welcome Back',
                      style: TextStyle( fontSize: 16, color: Colors.white60)),
                  const SizedBox(height: 20,),
                  const Text('Daily Journal',
                    style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),),

                  //  Image.asset('assets/images/mht.png'),
                  const SizedBox(height: 20,),
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('/images/mht.png'),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Enter Passcode to proceed',
                      style: TextStyle( fontSize: 16,  color: Colors.white70)),
                  const SizedBox(height: 20,),
                  const SizedBox(height: 40,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your passcode',

                      border: OutlineInputBorder(),


                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),


                ],
              ),
            ),
          )


      ),
      floatingActionButton:  ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Question2()),
            );
          },
          child: const Text("Continue")
      ),

    );
  }
}
