import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/Memories.dart';

import 'Home.dart';
class MyJournal extends StatefulWidget {
  const MyJournal({Key? key}) : super(key: key);

  @override
  State<MyJournal> createState() => _MyJournalState();
}

class _MyJournalState extends State<MyJournal> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final TextEditingController titlecontroller = TextEditingController();
    final TextEditingController notescontroller = TextEditingController();
    //
    // @override
    // void dispose()
    // {
    //
    //   Titlecontroller.dispose();
    //   Notescontroller.dispose();
    //   super.dispose();
    // }

    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
       body: ListView(
          children: [
            const SizedBox(height: 15.0,),
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Journal',
                          style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
                      const SizedBox(height: 20.0,),
                      TextFormField(
                        controller: titlecontroller,
                        style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        //expands: true,
                        decoration: InputDecoration(
                          hintText: 'Title',
                          hintStyle: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                          fillColor: Colors.grey,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black
                              )
                          ),
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12.0,),

                      TextFormField(
                        controller: notescontroller,
                        style: GoogleFonts.balsamiqSans(),
                        maxLines: 10,
                        decoration: InputDecoration(
                            hintText: 'Add some notes',
                            hintStyle: GoogleFonts.balsamiqSans(),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black
                              )
                          ),
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                           return null;
                        },
                      ),
                      const SizedBox(height: 20.0,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children:[
                              Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Home()),
                                  );
                                },
                                icon: const Icon(Icons.arrow_back),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: IconButton(
                                onPressed: () {

                                  if (_formKey.currentState!.validate()) {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Memories(title: titlecontroller.text, notes: notescontroller.text,)),
                                    );
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Processing Data')),
                                  );


                                },
                                icon: const Icon(Icons.check),

                              ),
                            ),
                            ]
                          ),

                    ],
                  ),
                ),
              ),
          ],
        ),

    );
  }
}

