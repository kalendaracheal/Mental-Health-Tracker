import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealthtracker/Model/user.dart';
import 'package:mentalhealthtracker/page/chat_page.dart';
import 'package:flutter/material.dart';

class ChatHeaderWidget extends StatelessWidget {
  final List<User> users;

  const ChatHeaderWidget({
    required this.users,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text('Professional help',
                  style: GoogleFonts.varelaRound(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white)),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  if (index == 0) {
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      child: const CircleAvatar(
                        radius: 24,
                        // child: Image.asset('assets/images/healthicon.jpg'),
                        backgroundImage:
                            AssetImage('assets/images/healthicon.jpg'),
                      ),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.only(right: 12, bottom: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatPage(user: users[index]),
                          ));
                        },
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(user.urlAvatar),
                        ),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      );
}
