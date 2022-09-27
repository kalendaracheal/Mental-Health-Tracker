import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:mentalhealthtracker/page/Videos.dart';


class Videocall extends StatefulWidget {
  const Videocall({Key? key}) : super(key: key);

  @override
  State<Videocall> createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: const Text('Therapetic Videos'),
      ),
      body: ListView(
        children: [
          Therapeticvideos(
            videoPlayerController:
                VideoPlayerController.asset('assets/videos/AnxietyLoop.mp4'),
            looping: true,
          ),
        ],
      ),
    );
  }
}

//Designing for videos
class Meditate extends StatefulWidget {
  const Meditate({Key? key}) : super(key: key);

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: const Text('Meditation'),
      ),
      body: ListView(
        children: [
          Therapeticvideos(
            videoPlayerController:
                VideoPlayerController.asset('assets/videos/meditation.mp4'),
            looping: true,
          ),
        ],
      ),
    );
  }
}

class Videocall2 extends StatefulWidget {
  const Videocall2({Key? key}) : super(key: key);

  @override
  State<Videocall2> createState() => _Videocall2State();
}

class _Videocall2State extends State<Videocall2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: const Text('Mindfulness'),
      ),
      body: ListView(
        children: [
          Therapeticvideos(
            videoPlayerController:
                VideoPlayerController.asset('assets/videos/Mindfulness.mp4'),
            looping: true,
          ),
        ],
      ),
    );
  }
}

