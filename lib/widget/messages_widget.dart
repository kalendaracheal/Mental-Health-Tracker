import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/API/firebase_api.dart';
import 'package:mentalhealthtracker/Model/message.dart';
import 'package:mentalhealthtracker/widget/message_widget.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class MessagesWidget extends StatelessWidget {
  final String idUser;

  const MessagesWidget({
    required this.idUser,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<List<Message>>(
    stream: FirebaseApi.getMessages(idUser),
    builder: (context, snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.waiting:
          return const Center(child: CircularProgressIndicator());
        default:
          if (snapshot.hasError) {
            // print(snapshot.error);
            return buildText('Something Went Wrong Try later');
            
          } else {
            final messages = snapshot.data;

            return messages!.isEmpty
                ? buildText('Say Hi..')
                : ListView.builder(
              physics: const BouncingScrollPhysics(),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];

                return MessageWidget(
                  message: message,
                  isMe: message.idUser == myId,
                );
              },
            );
          }
      }
    },
  );

  Widget buildText(String text) => Center(
    child: Text(
      text,
      style: GoogleFonts.varelaRound(fontSize: 24),
    ),
  );
}