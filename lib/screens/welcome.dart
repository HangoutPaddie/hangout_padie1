import 'package:flutter/material.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/model/user_model.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/booking.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/contact.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/home.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/profile.dart';
import 'package:hangout_padie/screens/categories.dart';
import 'package:hangout_padie/screens/onboarding.dart';
import 'package:hangout_padie/widgets/custom_bottom_nav_bar.dart';
import '../widgets/background_container.dart';
import '../widgets/home_sections.dart';
import './select_location.dart';
import 'events.dart';

class Welcome extends StatefulWidget {
  static String id = 'Home';

  UserModel user;
  Welcome({required this.user});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<Widget> screens = [Home(), Contact(), Booking(), Profile()];
  int currentIndex = 0;

  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Welcome ${widget.user.userFirstName}',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Onboarding.id);
            },
            icon: Icon(
              Icons.search,
              color: Color(0xff6C6E6D),
              size: 30,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFFFF5403),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Color(0XFFFFFDF5),
        unselectedItemColor: Color(0XFFFFA87C),
        showSelectedLabels: false,
        showUnselectedLabels: false,
    
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined), label: 'Contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Booking'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Me'),
        ],
      ),
    );
  }

  // Container buildRating(int rating) {
  //   return Container(
  //     height: 20,
  //     width: 30,
  //     color: rating >= ratingIndex ? Colors.red : Colors.grey[300],
  //     margin: EdgeInsets.symmetric(horizontal: 10),
  //   );
  // }
}

