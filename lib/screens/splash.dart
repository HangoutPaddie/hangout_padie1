import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hangout_padie/screens/authentication/sign_up.dart';
import 'package:hangout_padie/screens/onboarding.dart';
import './welcome.dart';

class Splash extends StatefulWidget {
  static String id = 'Splash';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future onBoarding() async {
    await Future.delayed(Duration(seconds: 5));
    return await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => Onboarding(),
      ),
    );
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
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover,
          ),

          // color: Colors.black,
          // backgroundBlendMode: BlendMode.multiply,
          //colorFilter:,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.orange.withOpacity(0.1),
                Colors.orange.withOpacity(0.1)
              ],
              stops: [0.0, 1.0],
            ),
          ),
          child: Center(
              child: Container(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          )),
        ),
      ),
    );
  }
}
