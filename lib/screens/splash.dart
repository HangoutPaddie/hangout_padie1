import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  static String id = 'Splash';
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover,
          ),

          color: Colors.black,
          backgroundBlendMode: BlendMode.multiply,
          //colorFilter:,
        ),
        child: Center(
            child: Container(
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        )),
      ),
    );
  }
}
