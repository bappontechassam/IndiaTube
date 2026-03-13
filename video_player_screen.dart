import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {

  final String videoUrl;

  const VideoPlayerScreen({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("IndiaTube Player"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              IconButton(
                icon: const Icon(Icons.play_arrow, size: 40),
                onPressed: () {
                  controller.play();
                },
              ),

              IconButton(
                icon: const Icon(Icons.pause, size: 40),
                onPressed: () {
                  controller.pause();
                },
              ),

            ],
          )

        ],
      ),
    );
  }
}