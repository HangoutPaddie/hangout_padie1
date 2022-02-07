import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/event_section.dart';
import 'package:hangout_padie/widgets/home_sections.dart';

import '../onboarding.dart';
import '../../constants.dart';
import '../../widgets/custom_bottom_nav_bar.dart';

class Categories extends StatelessWidget {
  static String id = 'categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
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
          padding: EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Text(
                  //   'LOCATION',
                  //   style: kHomeHeadersStyle,
                  // ),
                  // Text('EVENT', style: kHomeHeadersStyle),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'CATEGORIES',
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
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  scrollDirection: Axis.vertical,
                  itemCount: KCategories.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(KCategories[index].navPage);
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(KCategories[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(child: SizedBox()),
                            Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(KCategories[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ]),
        ),
      )),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
