import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:mentalhealthtracker/page/Videos.dart';

class videoplayer extends StatefulWidget {
  const videoplayer({Key? key}) : super(key: key);

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://www.youtube.com/watch?v=xBjnMrvhDQU');
    //_controller = VideoPlayerController.asset('assets/videos/container.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            child:  Text('Mental Health Tracker',
                style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 26)
            ),
          ),
          Text('Therapetic vids',
          style: GoogleFonts.balsamiqSans(fontSize: 16)),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(
                    _controller, allowScrubbing: true,
                    colors: VideoProgressColors(
                      playedColor: Colors.green
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration(),
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 100.0,
                semanticLabel: 'Play',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<Duration>(
            initialValue: controller.value.captionOffset,
            tooltip: 'Caption Offset',
            onSelected: (Duration delay) {
              controller.setCaptionOffset(delay);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Duration>>[
                for (final Duration offsetDuration in _exampleCaptionOffsets)
                  PopupMenuItem<Duration>(
                    value: offsetDuration,
                    child: Text('${offsetDuration.inMilliseconds}ms'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}

class _PlayerVideoAndPopPage extends StatefulWidget {
  @override
  _PlayerVideoAndPopPageState createState() => _PlayerVideoAndPopPageState();
}

class _PlayerVideoAndPopPageState extends State<_PlayerVideoAndPopPage> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();

    // _videoPlayerController =
    //     VideoPlayerController.asset('assets/videos/container.mp4');
    _videoPlayerController =
        VideoPlayerController.network('https://www.youtube.com/watch?v=xBjnMrvhDQU');
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data ?? false) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              );
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      ),
    );
  }
}



//calling the videos
class videocall extends StatefulWidget {
  const videocall({Key? key}) : super(key: key);

  @override
  State<videocall> createState() => _videocallState();
}

class _videocallState extends State<videocall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: Text('Therapetic Videos'),
      ),
      body:

      ListView(
        children: [
          Therapeticvideos(
            videoPlayerController:  VideoPlayerController.asset(
              'assets/videos/avatorglow.mp4'
            ),
            looping: true,
          ),

          Therapeticvideos(
            videoPlayerController:  VideoPlayerController.asset(
                'assets/videos/appbar.mp4'
            ),
            looping: true,
          ),
          Therapeticvideos(
            videoPlayerController:  VideoPlayerController.asset(
                'assets/videos/avatorglow.mp4'
            ),
            looping: true,
          ),
        ],
      ),
    );
  }
}


//Designing for videos
class meditate extends StatefulWidget {
  const meditate({Key? key}) : super(key: key);

  @override
  State<meditate> createState() => _meditateState();
}

class _meditateState extends State<meditate> {
  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(12));
    bool active = false;
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('             Mental Health Tracker',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.bold, fontSize: 20)),
        elevation: 0,
        backgroundColor:  Colors.transparent,
      ),
      body: ListView(

        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: Icon(Icons.chevron_right),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const videocall()),
                );

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: Icon(Icons.chevron_right),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Videocall2()),
                );

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Videocall3()),
                );

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: Icon(Icons.chevron_right),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const videocall()),
                );

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.orange[100],
              selected: active,
              trailing: Icon(Icons.chevron_right),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const videocall()),
                );

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Anxiety'),
              tileColor: Colors.lightBlueAccent,
              subtitle: Text('Know how to control your self when you have a panic attack'),
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              selectedTileColor: Colors.white,
              selected: active,
              trailing: Icon(Icons.chevron_right),
              onTap: (){

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(

                  children: [
                    Text('Disorders'),
                    Text('Here for you')
                  ],
                ),
                Column(
                  children: [
                    Text('Anxiety loop'),
                    Text('Here for you')
                  ],
                )

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(

                  children: [
                    Text('Disorders'),
                    Text('Here for you')
                  ],
                ),
                Column(
                  children: [
                    Text('Anxiety loop'),
                    Text('Here for you')
                  ],
                )

              ],
            ),
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
        title: Text('Anxiety'),
      ),
      body:

      ListView(
        children: [
          Therapeticvideos(
            videoPlayerController:  VideoPlayerController.asset(
                'assets/videos/avatorglow.mp4'
            ),
            looping: true,
          ),

        ],
      ),
    );
  }
}

class Videocall3 extends StatefulWidget {
  const Videocall3({Key? key}) : super(key: key);

  @override
  State<Videocall3> createState() => _Videocall3State();
}

class _Videocall3State extends State<Videocall3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: Text('Therapetic Videos'),
      ),
      body:

      ListView(
        children: [

          Therapeticvideos(
            videoPlayerController:  VideoPlayerController.asset(
                'assets/videos/appbar.mp4'
            ),
            looping: true,
          ),

        ],
      ),
    );
  }
}


