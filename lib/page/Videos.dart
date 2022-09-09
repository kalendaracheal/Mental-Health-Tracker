import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class Therapeticvideos extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool startedPlaying = false;
  const Therapeticvideos({Key? key, required this.videoPlayerController, required this.looping}) : super(key: key);

  @override
  State<Therapeticvideos> createState() => _TherapeticvideosState();
}

class _TherapeticvideosState extends State<Therapeticvideos> {
   late ChewieController chewieController;
   bool startedPlaying = false;
  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
      chewieController =  ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: widget.looping,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Chewie(
          controller: chewieController,
        ),
      );
  }
  @override
    void dispose() {
      super.dispose();
      widget.videoPlayerController.dispose();
      chewieController.dispose();
    }

   // Future<bool> started() async {
   //   await chewieController.autoInitialize;
   //   await chewieController.startAt;
   //    startedPlaying = true;
   //   return true;
   // }
}


