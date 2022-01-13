import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
              color: Color(
                0xff6C6E6D,
              ),
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
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(
                          selectLocationRoute,
                        ),
                        child: Text(
                          'LOCATION',
                          style: kHomeHeadersStyle,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(
                          eventRoute,
                        ),
                        child: Text(
                          'EVENT',
                          style: kHomeHeadersStyle,
                        ),
                      ),
                      Text(
                        'CATEGORIES',
                        style: kHomeHeadersStyle,
                      ),
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

  // Container buildRating(int rating) {
  //   return Container(
  //     height: 20,
  //     width: 30,
  //     color: rating >= ratingIndex ? Colors.red : Colors.grey[300],
  //     margin: EdgeInsets.symmetric(horizontal: 10),
  //   );
  // }
}
