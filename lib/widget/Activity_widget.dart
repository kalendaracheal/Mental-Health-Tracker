import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity_widget extends StatefulWidget {
  final String? activityPicture;
  final String? activityHeader;
  final String? activityBody;

  final void Function()? onPressed;
  const Activity_widget({Key? key,
    this.activityPicture,
    this.activityHeader,
    this.activityBody,
    this.onPressed,}) : super(key: key);

  @override
  State<Activity_widget> createState() => _Activity_widgetState();
}

class _Activity_widgetState extends State<Activity_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('             Mental Health Tracker',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 0,
        backgroundColor:  Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('${widget.activityPicture}',
                fit: BoxFit.fitWidth,
                height: 200.0,
                width: 400.0,

               ),
              const SizedBox(height: 12.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                child: Column(
                  children: [
                    Text('${widget.activityHeader}',
                      style: GoogleFonts.varelaRound( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[700] ),),
                     SizedBox(height: 10.0,),
                    Text('${widget.activityBody}',
                        style: GoogleFonts.balsamiqSans(fontSize: 17.0, color: Colors.black87)),
                    const SizedBox(height: 20.0,),
                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
