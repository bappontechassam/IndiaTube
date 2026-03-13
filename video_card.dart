import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {

  final Map video;

  const VideoCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 3,
      child: ListTile(
        leading: const Icon(
          Icons.play_circle_fill,
          size: 40,
          color: Colors.red,
        ),
        title: Text(
          video["title"],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${video["channel"]} • ${video["views"]}",
        ),
      ),
    );
  }
}