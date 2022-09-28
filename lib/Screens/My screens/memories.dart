import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/journal_Card.dart';
import 'home.dart';

class Memories extends StatefulWidget {
  const Memories({Key? key}) : super(key: key);

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  Stream<QuerySnapshot> collectionStream = FirebaseFirestore.instance.collection('journal').orderBy('journaldate', descending: true).snapshots();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Image.asset(
          '/images/bg1.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("My Space",
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white)),
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder<QuerySnapshot>(
                stream: collectionStream,
                builder:
                    (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Loading");
                  }

                  return Column(
                    children: snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                      return JournalCard(title: data['title'], notes: data['notes'], journaldate: data['journaldate'],);

                    }).toList(),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                  onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  child: const Text(" N e x t "),

    ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ]),
    );
  }


}
