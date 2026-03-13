import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(IndiaTube());
}

class IndiaTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IndiaTube",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}