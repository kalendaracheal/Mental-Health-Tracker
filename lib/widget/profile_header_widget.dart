import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String name;
  final String picture;





  const ProfileHeaderWidget({
    required this.name,
    required this.picture,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    height: 80,
    padding: const EdgeInsets.all(16).copyWith(left: 0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 5, width: 22),
            const BackButton(color: Colors.white),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 5, width: 24),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(picture),),
                  const SizedBox(height: 5, width: 20),
                  Text(
                    name,
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white,),
                    overflow: TextOverflow.ellipsis,
                  ),

                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [

                    Container(
                    )

                  ],
                ),
                buildIcon(

                    Icons.call),
                const SizedBox(width: 12),
                buildIcon(Icons.videocam),
              ],
            ),
            const SizedBox(width: 4),
          ],
        )
      ],
    ),
  );

  Widget buildIcon(IconData icon) => Container(
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white54,
    ),
    child: Icon(icon, size: 25, color: Colors.white),
  );
}