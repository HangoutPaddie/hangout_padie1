import 'package:flutter/material.dart';

class CustomMenuContainer extends StatelessWidget {
  List<String> drinkImages;
  int imageInt;

  CustomMenuContainer({
    required this.drinkImages,
    required this.imageInt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      height: MediaQuery.of(context).size.height * 0.22,
      //color: Colors.green,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              drinkImages[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
        itemCount: imageInt,
      ),
    );
  }
}