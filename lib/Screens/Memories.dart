import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/Screens/Home.dart';
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

    return Scaffold(
        backgroundColor: const Color(0xFFE1F5FE),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text('                     Memories',
            style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),
          elevation: 0,
          backgroundColor:  Colors.transparent,
        ),

      body: Column(
        children: [

          const SizedBox(height: 10,),
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('/images/mht.png'),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: JournalCard(
              title: 'Monday',
              notes: 'Great day',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
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
            ],
          ),
        ],
      )
    );



  }
}
