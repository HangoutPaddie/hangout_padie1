import 'package:flutter/material.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/model/user_model.dart';
import 'package:hangout_padie/screens/onboarding.dart';
import 'package:hangout_padie/widgets/custom_bottom_nav_bar.dart';
import '../widgets/background_container.dart';
import '../widgets/home_sections.dart';
import './select_location.dart';
import './event.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  UserModel user;
  Home({required this.user});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed(SelectLocation.id),
                        child: Text(
                          'LOCATION',
                          style: kHomeHeadersStyle,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(Event.id),
                        child: Text(
                          'EVENT',
                          style: kHomeHeadersStyle,
                        ),
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
                      'Top Hangout Spots',
                      style: kHomeSectionHeaderStyle,
                    ),
                    Text(
                      'view all',
                      style: TextStyle(color: Color(0xFFFFAC82)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                HomeSections(
                  list: kTopHangoutSpots,
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomedations',
                      style: kHomeSectionHeaderStyle,
                    ),
                    Text('view all', style: TextStyle(color: Color(0xFFFFAC82)))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                HomeSections(
                  list: kRecommendation,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
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
