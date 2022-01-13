import 'package:flutter/material.dart';
import '../constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Material(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFEFEDEA),
              borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: kNavMenue.length,
            itemBuilder: (context, index) {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 20),
                duration: Duration(microseconds: 300),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      navIndex = index;
                    });
                  },
                  child: Icon(
                    kNavMenue[index],
                    size: 30,
                    color: index == navIndex
                        ? Color(0xffFF5403)
                        : Color(0xffF4BFA5),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      // items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home_rounded, color: Color(0xFFFFAC82)),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.calendar_today_outlined, color: Color(0xFFFFAC82)),
      //     label: 'Home',
      //   ),
      // ],
    );
  }
}
