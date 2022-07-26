import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/memories.dart';

import '../../API/firebase_api.dart';
import 'home.dart';

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
    final DateTime journaldate = DateTime.now();
    final Timestamp myjournaldate = Timestamp.fromDate(journaldate);//To TimeStamp


    void sendJournal() async {
      //FocusScope.of(context).unfocus();
      try {
        await FirebaseApi.uploadJournal(
            titlecontroller.text.trim(), notescontroller.text.trim(), myjournaldate);


        titlecontroller.clear();
        notescontroller.clear();
      }  on Exception catch (e) {
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text(' Loading wait a moment')));
      }
    }

    //

    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('My Journal',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue)),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: titlecontroller,
                    style:
                        GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    //expands: true,
                    decoration: InputDecoration(
                      hintText: 'Title',
                      hintStyle:
                          GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                      fillColor: Colors.grey,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: notescontroller,
                    style: GoogleFonts.balsamiqSans(),
                    maxLines: 12,
                    decoration: InputDecoration(
                      hintText: 'Add some notes',
                      hintStyle: GoogleFonts.balsamiqSans(),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 14.0, top: 5.0, right: 10.0),
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
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 14.0, top: 5.0, left: 10.0),
                          child: IconButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // memoriesCntrler.addMemories(MemoriesModel(
                                //     title: titlecontroller.text,
                                //     notes: notescontroller.text));
                                try {
                                  sendJournal();

                                  //firebase upload

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Journal saved')));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        // ignore: prefer_const_constructors
                                        builder: (context) => Memories()),
                                  );
                                } on Exception catch (e) {
                                  print(e);
                                }
                              }
                            },
                            icon: const Icon(Icons.check),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
