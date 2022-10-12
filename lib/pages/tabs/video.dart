
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton:Wrap( //will break to another line on overflow
          direction: Axis.horizontal, //use vertical to show  on vertical axis
          children: <Widget>[
            Container(
                margin:EdgeInsets.all(10),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
            )),
            //button first

            Container(
                margin:EdgeInsets.all(10),
                child: FloatingActionButton(
                  onPressed: (){
                    //action code for button 2
                    Navigator.pushNamed(context, '/tabs');
                  },
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.arrow_back_rounded),
                )
            ), // button second
            // Add more buttons here
          ],
        ),


      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}