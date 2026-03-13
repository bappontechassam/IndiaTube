import 'package:flutter/material.dart';
import 'widgets/video_card.dart';

class HomeScreen extends StatelessWidget {

  final List videos = [
    {
      "title": "Welcome to IndiaTube",
      "channel": "IndiaTube Official",
      "views": "1K views"
    },
    {
      "title": "First Creator Video",
      "channel": "Creator India",
      "views": "500 views"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IndiaTube"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.account_circle)
        ],
      ),

      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return VideoCard(video: videos[index]);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "Upload",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}