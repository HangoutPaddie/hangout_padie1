import 'package:flutter/material.dart';
import '../constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFEFEDEA),
              borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: kNavMenue.length,
            itemBuilder: (context, index) {
              return AnimatedContainer(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                duration: const Duration(
                  microseconds: 300,
                ),
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
                        ? const Color(0xffFF5403)
                        : const Color(0xffF4BFA5),
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
