import 'package:flutter/material.dart';
import './screens/screens.dart';
import 'constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _routes(),
    );
  }

  Map<String, Widget Function(BuildContext)> _routes() => {
        defaultRoute: (context) => const Onboarding(),
        signUpRoute: (context) => const SignUp(),
        loginRoute: (context) => const Login(),
        onboardingRoute: (context) => const Onboarding(),
        homeRoute: (context) => const Home(),
        selectLocationRoute: (context) => const SelectLocation(),
        eventRoute: (context) => const Event(),
      };
}
