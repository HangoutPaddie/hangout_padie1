import 'package:flutter/material.dart';
import 'package:hangout_padie/constants.dart';
import '../../widgets/custom_home_section.dart';
import '../../widgets/custom_home_grid_section.dart';

class MyLocation extends StatelessWidget {
  static String id = 'MyLocation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Eco'),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   foregroundColor: Color(0XFFFF5403),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Eco',
                  style: TextStyle(
                    color: Color(0XFFFF5403),
                  ),
                ),
              ),
              Text(
                'LAGOS',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              CustomHomeSection(
                title: 'TOP RATED HANGOUT SPOTS',
                containerHeight: 200,
                childHeight: 200,
                childWidth: 300,
                scrollDirection: Axis.horizontal,
                list: kTopHangoutSpots,
              ),
              SizedBox(
                height: 20,
              ),
              CustomHomeGridSection(
                title: 'CATEGORIES',
              ),
              SizedBox(height: 20),
              CustomHomeSection(
                title: 'Newly opened locaions',
                //scrollDirection: Axis.horizontal,
                containerHeight: 500,
                childWidth: double.infinity,
                childHeight: 150,
                list: kTopHangoutSpots,
              ),
              SizedBox(
                height: 20,
              ),
              CustomHomeSection(
                title: 'EVENTS',
                containerHeight: 200,
                childHeight: 200,
                childWidth: 300,
                scrollDirection: Axis.horizontal,
                list: kTopHangoutSpots,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
