import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
class MySquare extends StatelessWidget {
  final String child;
  const MySquare({required this.child,    Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding: const EdgeInsets.all( 12.0),
     child: Container(
      height: 400,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all( Radius.circular(15.0)),
          color: Colors.deepPurple[100],
      ),
      child: Center(
        child: Text(child,
            style: GoogleFonts.balsamiqSans( fontSize: 16)
        ),
      ),
    ),);
  }
}

class JournalCard extends StatelessWidget {
  final String? title;
  final String? notes;

  const JournalCard({required this.title, required this.notes,  Key? key,}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);

    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      body: Center(
          child: ListView(

              children: [

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListTile(
                    leading: Icon(Icons.wallet),
                    tileColor: Colors.lightBlueAccent[100],
                    title: Text('titles ',
                      style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold ),),
                    subtitle: Text('notesss',
                      style: TextStyle( fontSize: 20),),
                    textColor: Colors.black,
                    trailing: Text(formattedDate,
                        style: GoogleFonts.balsamiqSans(fontSize: 14.0, color: Colors.black87)
                    ),

                  ),

                ),


                const SizedBox(height: 10,),


              ],
            ),
          ),




    );

  }

}
