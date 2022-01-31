import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.menu,
            size: 30,
          ),
          Text(
            'Eko!',
            style: TextStyle(
              color: Color(0xFFFF935D),
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}