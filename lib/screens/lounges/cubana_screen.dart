import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/booking_screen.dart';
import 'package:hangout_padie/screens/menu_screens/cubana_menu/main_menu.dart';
import 'package:hangout_padie/widgets/constant.dart';
import 'package:hangout_padie/widgets/custom_body_text.dart';
import 'package:hangout_padie/widgets/custom_navbar.dart';

import '../location/location_screen.dart';

class CubanaScreen extends StatefulWidget {
  static String id = 'CubanaScreen';
  const CubanaScreen({Key? key}) : super(key: key);

  @override
  _CubanaScreenState createState() => _CubanaScreenState();
}

class _CubanaScreenState extends State<CubanaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Eko!',
              style: TextStyle(
                color: Color(0xFFFF935D),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 25.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.highlight_off),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 35.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LocationScreen(),
                              ),
                            );
                          },
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                size: 25,
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Location',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const MainMenuScreen(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.restaurant,
                                size: 25,
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Menu',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFFF5403),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const BookingScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBodyText(
                    firstLocation: 'CUBANA',
                    secondLocation: 'Victoria Island, Lagos',
                    myImage: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            cubanaItemList[index].loungeImageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    myText: "Cubana is an exciting place to be. "
                        "It is situated at the heartbeat of Lagos on Victoria Island, see more....",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
