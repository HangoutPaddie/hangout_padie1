import 'package:flutter/material.dart';

class CustomMenuRow extends StatelessWidget {
  final String firstText;
  final String secondText;

  CustomMenuRow({
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
      ),
      child: Row(
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
    );
  }
}