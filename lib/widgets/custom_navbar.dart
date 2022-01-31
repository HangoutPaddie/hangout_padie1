import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 25,
      type: BottomNavigationBarType.fixed,
      currentIndex: 3,
      backgroundColor: const Color(0xFFFF5403),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.phone,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: '',
        ),
      ],
    );
  }
}