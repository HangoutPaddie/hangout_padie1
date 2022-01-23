import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/event_section.dart';
import 'package:hangout_padie/widgets/home_sections.dart';

import './onboarding.dart';
import '../constants.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class Events extends StatelessWidget {
  static String id = 'Event';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Onboarding.id);
            },
            icon: Icon(
              Icons.search,
              color: Color(0xff6c6e6d),
              size: 30,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'LOCATION',
                        style: kHomeHeadersStyle,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              'EVENT',
                              style: kHomeHeadersStyle,
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 2,
                              color: Color(0xFFFFAC82),
                            ))),
                          ),
                          // Divider(

                          //   color: Color(0xFFFFAC82),
                          //   thickness: 2,
                          // )
                        ],
                      ),
                      Text('CATEGORIES', style: kHomeHeadersStyle),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Carnival',
                      style: kHomeSectionHeaderStyle,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFFFFAC82),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                EventSection(
                  list: kCarnival,
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Comedy Shows',
                      style: kHomeSectionHeaderStyle,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFFFFAC82),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                EventSection(
                  list: kComedy_shows,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
