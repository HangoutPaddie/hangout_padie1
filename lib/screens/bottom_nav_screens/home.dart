import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/home_sections.dart';

import '../../constants.dart';
//import '../categories/categories.dart';
//import '../events/events.dart';
//import '../location/select_location.dart';
import '../onboarding.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          top: MediaQuery.of(context).size.height * 0.05,
          right: 15,
          bottom: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {},
                        //Navigator.of(context).pushNamed(SelectLocation.id),
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.03,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                        //Navigator.of(context).pushNamed(SelectLocation.id),
                    child: Text(
                      'LOCATION',
                      style: kHomeHeadersStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                        //Navigator.of(context).pushNamed(Events.id),
                    child: Text(
                      'EVENT',
                      style: kHomeHeadersStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                        //Navigator.of(context).pushNamed(Categories.id),
                    child: Text(
                      'CATEGORIES',
                      style: kHomeHeadersStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                padding: EdgeInsets.all(0),
                height: MediaQuery.of(context).size.height * 0.71,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(0),
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
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
