import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/art_galleries.dart';
import 'package:hangout_padie/screens/bars.dart';
import 'package:hangout_padie/screens/cafes.dart';
import 'package:hangout_padie/screens/categories.dart';
import 'package:hangout_padie/screens/beach.dart';
import 'package:hangout_padie/screens/locate_now.dart';
import 'package:hangout_padie/screens/lounges.dart';
import 'package:hangout_padie/screens/restaurants.dart';
import 'package:hangout_padie/screens/splash.dart';

import './screens/sign_up.dart';
import './screens/login.dart';
import 'screens/welcome.dart';
import './screens/onboarding.dart';
import './screens/select_location.dart';
import 'screens/events.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primaryColor: Colors.white,
          ),
      initialRoute: Splash.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
        Onboarding.id: (context) => Onboarding(),
        // Home.id: (context) => Home(),
        SelectLocation.id: (context) => SelectLocation(),
        Events.id: (context) => Events(),
        Splash.id: (context) => Splash(),
        //LocateNow.id: (context) => LocateNow(),
        Categories.id: (context) => Categories(),
        Beach.id:(context) => Beach(),
        Cafes.id:(context) => Cafes(),
        Bars.id:(context) => Bars(),
        Restaurants.id:(context) => Restaurants(),
        Lounges.id:(context) => Lounges(),
        ArtGalleries.id:(context) => ArtGalleries(),
      },
    );
  }
}
