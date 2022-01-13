import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../constants.dart';

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                onboardingRoute,
              );
            },
            icon: const Icon(
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
            padding: const EdgeInsets.only(
              left: 30,
              top: 60,
              right: 30,
              bottom: 15,
            ),
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
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 2,
                              color: Color(
                                0xFFFFAC82,
                              ),
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
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Hangout Spots',
                      style: kHomeSectionHeaderStyle,
                    ),
                    const Text(
                      'view all',
                      style: TextStyle(
                        color: Color(
                          0xFFFFAC82,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                HomeSections(
                  list: kTopHangoutSpots,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomedations',
                      style: kHomeSectionHeaderStyle,
                    ),
                    const Text(
                      'view all',
                      style: TextStyle(
                        color: Color(
                          0xFFFFAC82,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
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
}
