import 'package:mentalhealthtracker/API/firebase_api.dart';
import 'package:mentalhealthtracker/Model/user.dart';
import 'package:mentalhealthtracker/widget/chat_body_widget.dart';
import 'package:mentalhealthtracker/widget/chat_header_widget.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: StreamBuilder<List<User>>(
            stream: FirebaseApi.getUsers(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    // print(snapshot.error);
                    return buildText('Something Went Wrong Try later!');
                  }
                  else {
                    final users = snapshot.data;

                    if (users!.isEmpty) {
                      return buildText('No Users Found \n\n check your internet connection!');
                    } else {
                      return Column(
                        children: [
                          ChatHeaderWidget(users: users),
                          ChatBodyWidget(users: users)
                        ],
                      );
                    }
                  }
              }
            },
          ),
        ),
      );

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      );
}
