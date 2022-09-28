
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// class MemoriesModel{
//   MemoriesModel({
//    required this.title,
//    required this.notes
// });
//
//   String title;
//   String notes;
// }

class MemoriesModel extends StatelessWidget {

  MemoriesModel({
    required this.title,
    required this.notes
  });
  String title;
  String notes;

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('journal');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'title': title, // John Doe
        'notes': notes, // Stokes and Sons

      })
          // .then((value) => print("Journal Added"))
          // .catchError((error) => print("Failed to add journal: $error"))
          ;
    }

    return FloatingActionButton(
      onPressed: addUser,
      child: const Text(
        "Add User",
      ),
    );
  }
}