import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  String imageUrl;
  String title;

  EventTile({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: Image(
          image: AssetImage(
            'assets/images/onboarding3.png',
          ),
          fit: BoxFit.cover,
        ),
        // footer: Container(
        //   color: Colors.grey[400],
        //   child: Text(
        //     title,
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        footer: GridTileBar(
          backgroundColor: Colors.white70,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
