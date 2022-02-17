import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:hangout_padie/screens/categories/art_galleries.dart';
// import 'package:hangout_padie/screens/categories/bars.dart';
// import 'package:hangout_padie/screens/categories/cafes.dart';
// import 'package:hangout_padie/screens/categories/categories.dart';
// import 'package:hangout_padie/screens/categories/beach.dart';
import 'package:hangout_padie/screens/edit_profile.dart';
// import 'package:hangout_padie/screens/location/locate_now.dart';
// import 'package:hangout_padie/screens/categories/lounges.dart';
// import 'package:hangout_padie/screens/categories/restaurants.dart';
import 'package:hangout_padie/screens/lounges/boardroom_screen.dart';
// import 'package:hangout_padie/screens/lounges/cubana_screen.dart';
// import 'package:hangout_padie/screens/menu_screens/cubana_menu/main_menu.dart';
// import 'package:hangout_padie/screens/menu_screens/cubana_menu/menu_details.dart';
import 'package:hangout_padie/screens/splash.dart';

//import 'screens/authentication/sign_up.dart';
//import 'screens/authentication/login.dart';
import 'screens/welcome.dart';
import './screens/onboarding.dart';
//import 'screens/location/select_location.dart';
//import 'screens/events/events.dart';
//import 'screens/location/my_location.dart';
//import './screens/changes_password.dart';

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
       // SignUp.id: (context) => SignUp(),
       //  Login.id: (context) => Login(),
        Onboarding.id: (context) => Onboarding(),
        // Home.id: (context) => Home(),
       // MyLocation.id: (context) => MyLocation(),
       // SelectLocation.id: (context) => SelectLocation(),
       // Events.id: (context) => Events(),
        Splash.id: (context) => Splash(),
        //LocateNow.id: (context) => LocateNow(),
        // Categories.id: (context) => Categories(),
        // Beach.id: (context) => Beach(),
        // Cafes.id: (context) => Cafes(),
        // Bars.id: (context) => Bars(),
        // Restaurants.id: (context) => Restaurants(),
        // Lounges.id: (context) => Lounges(),
        // ArtGalleries.id: (context) => ArtGalleries(),
        // ChangePassword.id: (context) => ChangePassword(),
        // CubanaScreen.id: (context) => CubanaScreen(),
        BoardroomScreen.id: (context) => BoardroomScreen(),
        // MainMenuScreen.id: (context) => MainMenuScreen(),
        // MenuDetailsScreen.id: (context) => MenuDetailsScreen(),
        Editprofile.id: (context) => Editprofile(),
      },
    );
  }
}
