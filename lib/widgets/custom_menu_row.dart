import 'package:flutter/material.dart';

class CustomMenuRow extends StatelessWidget {
  final String firstText;
  final String secondText;
  final List<String> images;

  CustomMenuRow({
    required this.firstText,
    required this.secondText,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        //right: 10.0,
        left: 15.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                firstText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  secondText,
                  style: const TextStyle(
                    color: Color(0xFFFF935D),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            //height: 50,
            child: Expanded(
              child: SizedBox(
                height: 185,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}