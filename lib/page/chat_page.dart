import 'package:mentalhealthtracker/Model/user.dart';
import 'package:mentalhealthtracker/widget/messages_widget.dart';
import 'package:mentalhealthtracker/widget/new_message_widget.dart';
import 'package:mentalhealthtracker/widget/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final User user;

  const ChatPage({
    required this.user,
     Key? key,
  }) : super(key: key);

  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.blue,
    body: SafeArea(
      child: Column(
        children: [
          ProfileHeaderWidget(name: widget.user.name),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: MessagesWidget(idUser: widget.user.idUser),
            ),
          ),
          NewMessageWidget(idUser: widget.user.idUser)
        ],
      ),
    ),
  );
}