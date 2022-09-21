import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mentalhealthtracker/Model/memories_model.dart';
import 'package:mentalhealthtracker/data.dart';
import 'package:mentalhealthtracker/Model/message.dart';
import 'package:mentalhealthtracker/Model/user.dart';

import '../utils.dart';

class FirebaseApi {
  static Stream<List<User>> getUsers() => FirebaseFirestore.instance
      .collection('users')
      .orderBy(UserField.lastMessageTime, descending: true)
      .snapshots()
      .transform(Utils.transformer(User.fromMap));

  static Future uploadJournal(String title, String notes) async {
    final refJournal = FirebaseFirestore.instance.collection('journal');

    await refJournal.add({
      'title': title,
      'notes': notes,
      'journaldate': DateTime.now()
    });
// // To update our other user that they have received a new message
//     final refUsers = FirebaseFirestore.instance.collection('users');
//     await refUsers
//         .doc(idUser)
//         .update({UserField.lastMessageTime: Timestamp.fromDate(DateTime.now())});
  }

  // static Stream<List<MemoriesModel>> getJournal(String title, String notes) =>
  //     FirebaseFirestore.instance
  //         .collection('journal')
  //         .orderBy(MessageField.createdAt, descending: true)
  //         .snapshots().;

  static Future uploadMessage(String idUser, String message) async {
    final refMessages =
    FirebaseFirestore.instance.collection('chats/$idUser/messages');

    await refMessages.add({
      'idUser': myId,
      'urlAvatar': myUrlAvatar,
      'username': myUsername,
      'message': message,
      'createdAt': DateTime.now()
    });
// To update our other user that they have received a new message
    final refUsers = FirebaseFirestore.instance.collection('users');
    await refUsers
        .doc(idUser)
        .update({UserField.lastMessageTime: Timestamp.fromDate(DateTime.now())});
  }

  static Stream<List<Message>> getMessages(String idUser) =>
      FirebaseFirestore.instance
          .collection('chats/$idUser/messages')
          .orderBy(MessageField.createdAt, descending: true)
          .snapshots()
          .transform(Utils.transformer(Message.fromJson));

  static Future addRandomUsers(List<User> users) async {
    final refUsers = FirebaseFirestore.instance.collection('users');

    final allUsers = await refUsers.get();
    if (allUsers.size != 0) {
      return;
    } else {
      for (final user in users) {
        final userDoc = refUsers.doc();
        final newUser = user.copyWith(idUser: userDoc.id, name: 'Barack Obama', urlAvatar: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/President_Barack_Obama.jpg/480px-President_Barack_Obama.jpg', lastMessageTime: Timestamp.fromDate(DateTime.now()));

        await userDoc.set(newUser.toMap());
      }
    }
  }
}