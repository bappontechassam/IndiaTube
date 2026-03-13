import 'package:flutter/material.dart';

class ShortsScreen extends StatelessWidget {

  final List shorts = [
    {"title": "Funny Short"},
    {"title": "Tech Short"}
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView.builder(

        scrollDirection: Axis.vertical,
        itemCount: shorts.length,

        itemBuilder: (context, index) {

          return Container(
            color: Colors.black,
            child: Center(
              child: Text(
                shorts[index]["title"],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          );

        },

      ),
    );

  }

}