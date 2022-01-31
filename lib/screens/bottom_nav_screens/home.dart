import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/home_sections.dart';

import '../../constants.dart';
import '../categories/categories.dart';
import '../events/events.dart';
import '../location/select_location.dart';
import '../onboarding.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed(SelectLocation.id),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Onboarding.id);
                      },
                      icon: Icon(
                        Icons.search,
                        color: Color(0xff6C6E6D),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
                    onTap: () => Navigator.of(context).pushNamed(Events.id),
                    child: Text(
                      'EVENT',
                      style: kHomeHeadersStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Categories.id),
                    child: Text(
                      'CATEGORIES',
                      style: kHomeHeadersStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
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
                        Text('view all',
                            style: TextStyle(color: Color(0xFFFFAC82)))
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
            )
          ],
        ),
      ),
    );
  }
}
