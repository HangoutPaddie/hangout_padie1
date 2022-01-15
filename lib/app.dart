import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/locate_now.dart';
import 'package:hangout_padie/screens/splash.dart';

import './screens/sign_up.dart';
import './screens/login.dart';
import './screens/home.dart';
import './screens/onboarding.dart';
import './screens/select_location.dart';
import './screens/event.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primaryColor: Colors.white,
          ),
      initialRoute: LocateNow.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
        Onboarding.id: (context) => Onboarding(),
        // Home.id: (context) => Home(),
        SelectLocation.id: (context) => SelectLocation(),
        Event.id: (context) => Event(),
        Splash.id: (context) => Splash(),
        LocateNow.id: (context) => LocateNow(),
      },
    );
  }
}
