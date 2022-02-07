import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/booking.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/contact.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/home.dart';
import 'package:hangout_padie/screens/bottom_nav_screens/profile.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int index;
  Function(int) onTap;
  CustomBottomNavigationBar({
    required this.onTap,
    required this.index,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0XFFFF5403),
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.index,
      onTap: widget.onTap,
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
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
      ],
    );
  }
}
