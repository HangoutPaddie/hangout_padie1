import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

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
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: [
            GestureDetector(
                onTap: () => Navigator.of(context).pushReplacementNamed(
                      signUpRoute,
                    ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'skip',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: kOnBoardingItems.length,
            onPageChanged: (index) {
              setState(
                () => currentIndex = index,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFF122),
                      Color(0xffFF5603),
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
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
                    child: Image(
                      image: AssetImage(kOnBoardingItems[index].image),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.5,
                      //color: Colors.blue,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Colors.white),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.07,
                          top: MediaQuery.of(context).size.height * 0.06,
                          right: MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                kOnBoardingItems.length,
                                (index) => buildDot(index),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            Text(
                              kOnBoardingItems[currentIndex].displayText,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Expanded(
                              child: SizedBox(),
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
                                          duration: const Duration(
                                            milliseconds: 100,
                                          ),
                                          curve: Curves.bounceIn,
                                        );
                                      },
                                      child: const Text(
                                        'Next',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ))
                                  : GestureDetector(
                                      onTap: () =>
                                          Navigator.pushReplacementNamed(
                                        context,
                                        signUpRoute,
                                      ),
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(
                                          0xff320104,
                                        ),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: const Center(
                                            child: Text(
                                              'Continue',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            SizedBox(
                              height: currentIndex < kOnBoardingItems.length - 1
                                  ? MediaQuery.of(context).size.height * 0.05
                                  : MediaQuery.of(context).size.height * 0.09,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              );
            }));
  }

  Container buildDot(int i) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: i == currentIndex
            ? const Color(0xffF90716)
            : const Color(0xffFF9C11),
        borderRadius: BorderRadius.circular(15),
      ),
    );
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
                                  