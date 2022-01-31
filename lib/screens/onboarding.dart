//import 'dart:html';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/screens/authentication/sign_up.dart';

import '../widgets/background_container.dart';

class Onboarding extends StatefulWidget {
  static String id = 'onboarding';
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: [
            GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushReplacementNamed(SignUp.id),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'skip',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: kOnBoardingItems.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffFFF122), Color(0xffFF5603)],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter),
                ),
                // child: Container(
                //   height: 100,
                //   width: 100,
                //   decoration: BoxDecoration(
                //     //color: Colors.white,
                //     image: DecorationImage(
                //         image: AssetImage('assets/images/john_brave.jpg'), fit: BoxFit.cover),
                //   ),
                // ),
                //child: Image(image: AssetImage('assets/images/john_brave.jpg'),),
                child: Stack(fit: StackFit.loose, children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.5,
                      //color: Colors.blue,

                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.07,
                          top: MediaQuery.of(context).size.height * 0.06,
                          right: MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(child: SizedBox()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(kOnBoardingItems.length,
                                  (index) => buildDot(index)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                            ),
                            Text(
                              kOnBoardingItems[currentIndex].displayText,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: currentIndex < kOnBoardingItems.length - 1
                                  ? GestureDetector(
                                      onTap: () {
                                        // add a void callback here
                                        setState(() {
                                          currentIndex = currentIndex + 1;
                                        });
                                        _pageController.nextPage(
                                            duration:
                                                Duration(milliseconds: 100),
                                            curve: Curves.bounceIn);
                                      },
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                  : GestureDetector(
                                      onTap: () =>
                                          Navigator.pushReplacementNamed(
                                              context, SignUp.id),
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff320104),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(
                                              'Continue',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(kOnBoardingItems[index].image),
                              fit: BoxFit.cover)),
                    ),
                  )),
                ]),
              );
            }));
  }

  Container buildDot(int i) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: i == currentIndex ? Color(0xffF90716) : Color(0xffFF9C11),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    // path.lineTo(0, size.height - 250);
    // var firstStart = Offset(size.width / 3, size.height -170);
    // var firstEnd = Offset(size.width / 2.35, size.height - 180);
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // var secondStart =
    //     Offset(size.width - (size.width / 5), size.height -200 );
    // var secondEnd = Offset(size.width , size.height -300);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // path.lineTo(size.width, 0);

    path.lineTo(0, size.height - 300);
    var controlPoint = Offset((size.width / 2) * 1.7, size.height - 100);
    var endpoint = Offset(size.width, size.height - 300);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //TODO: implement shouldReclip
    return true;
  }
}
// GestureDetector(
//                                             child: Material(
//                                               elevation: 5,
//                                               borderRadius:
//                                                   BorderRadius.circular(15),
//                                               color: Color(0xff320104),
//                                               child: Container(
//                                                 height: 50,
//                                                 width: double.infinity,
//                                                 child: Center(
//                                                   child: Text(
//                                                     'Continue',
//                                                     style: TextStyle(
//                                                         color: Colors.white),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
                                  