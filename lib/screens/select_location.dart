import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/custom_bottom_nav_bar.dart';
import '../constants.dart';
import './onboarding.dart';

class SelectLocation extends StatelessWidget {
  static String id = 'SelectLocation';
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'LOCATION',
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
                    Text('EVENT', style: kHomeHeadersStyle),
                    Text('CATEGORIES', style: kHomeHeadersStyle),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text('Please select your location',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),)),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
