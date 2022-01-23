import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/onboarding.dart';

class Splash extends StatefulWidget {
  static String id = 'Splash';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future onBoarding() async {
    await Future.delayed(Duration(seconds: 5));
    return await Navigator.of(context).pushReplacementNamed(Onboarding.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onBoarding();
  }

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
