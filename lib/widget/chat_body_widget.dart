import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Model/user.dart';
import 'package:mentalhealthtracker/page/chat_page.dart';
import 'package:flutter/material.dart';

class ChatBodyWidget extends StatelessWidget {
  final List<User> users;
  callDoctor(){
    const number = '+256757081140';

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: GoogleFonts.balsamiqSans(fontSize: 16, color: Colors.black54),
      ),
      child: const Text('Call'),
      onPressed: ()async{
        await FlutterPhoneDirectCaller.callNumber(number);
      },
    );
  }
  const ChatBodyWidget({
    required this.users,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color:Color(0xFFE1F5FE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: buildChats(),
    ),
  );

  Widget buildChats() => ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      final user = users[index];

      return SizedBox(
        height: 75,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatPage(user: user),
            ));
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(user.urlAvatar),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(user.name,
                style: GoogleFonts.balsamiqSans(fontSize: 16)),
          ),
         // trailing: callDoctor(),
        ),
      );
    },
    itemCount: users.length,
  );
}