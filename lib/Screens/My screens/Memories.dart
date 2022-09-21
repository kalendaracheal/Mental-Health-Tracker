
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Screens/My%20screens/Home.dart';
import 'package:mentalhealthtracker/page/Selfcare.dart';

import '../../Contollers/memories_controller.dart';
import '../../widget/Journal_Card.dart';

class Memories extends StatefulWidget {


  const Memories({Key? key}) : super(key: key);

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  //Stream<QuerySnapshot> collectionStream = FirebaseFirestore.instance.collection('journal').snapshots();

  @override
  Widget build(BuildContext context) {
    //final Stream<QuerySnapshot> journal = FirebaseFirestore.instance.collection('journal').snapshots();

    Stream<QuerySnapshot> collectionStream =
        FirebaseFirestore.instance.collection('journal').snapshots();
    // FirebaseFirestore.instance
    //     .collection('journal')
    //     .doc(userId)
    //     .get()
    //     .then((DocumentSnapshot documentSnapshot) {
    //   if (documentSnapshot.exists) {
    //     print('Document data: ${documentSnapshot.data()}');
    //   } else {
    //     print('Document does not exist on the database');
    //   }
    // });
    return Stack(children: [
      Image.asset(
        '/images/bg1.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),

      Scaffold(
        //backgroundColor: const Color(0xFFE1F5FE),
        backgroundColor: Colors.transparent,

        body: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'My Space',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
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
          // FirebaseApi.getMessages(idUser),
          // StreamBuilder(
          //     stream: collectionStream,
          //     builder: (BuildContext context,
          //         AsyncSnapshot<QuerySnapshot> snapshot) {
          //       if (snapshot.hasError) {
          //         return const Text("Something went wrong");
          //       }
          //
          //       // if (snapshot.hasData && !snapshot.data!.exists) {
          //       //             return const Text("Document does not exist");
          //       //             }
          //       if (snapshot.connectionState == ConnectionState.waiting) {
          //         return const Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       }
          //
          //       final List storedJournal = [];
          //       if (snapshot.connectionState == ConnectionState.done) {
          //
          //         snapshot.data!.docs.map((DocumentSnapshot document) {
          //           Map a = document.data()! as Map<String, dynamic>;
          //           storedJournal.add(a);
          //           a['id'] = document.data();
          //         }).toList();
          //
          //         return Column(
          //           children: List.generate(storedJournal.length, (index) {
          //             return Text(storedJournal[index]['title']);
          //             //JournalCard(title: storedJournal[index]['title'], notes: storedJournal[index]['notes']);
          //           }),
          //         );
          //       }
          //       return const Text('Journal not found');
          //      }
          //     )
        ]),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 14.0, top: 5.0, left: 10.0),
              child: Text('You got this, just breath...',
                  style: GoogleFonts.balsamiqSans(
                      fontSize: 20, color: Colors.blue)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 14.0, top: 5.0, right: 10.0),
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
      )
    ]);
  }

// class GetJournal extends StatelessWidget {
//   final String documentId;
//
//   const GetJournal(this.documentId);
//
//   @override
//   Widget build(BuildContext context) {
//     CollectionReference journal = FirebaseFirestore.instance.collection('journal');
//
//     return FutureBuilder<DocumentSnapshot>(
//       future: journal.doc(documentId).get(),
//       builder:
//           (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//
//         if (snapshot.hasError) {
//           return const Text("Something went wrong");
//         }
//
//         if (snapshot.hasData && !snapshot.data!.exists) {
//           return const Text("Document does not exist");
//         }
//
//         if (snapshot.connectionState == ConnectionState.done) {
//           Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
//           return const JournalCard(title: '' , notes: '');
//         }
//
//         return const Text("loading");
//       },
//     );
//   }
}
