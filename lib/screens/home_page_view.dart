// import 'package:flutter/material.dart';

// class HomePageView extends StatefulWidget {
  
//   @override
//   _HomePageViewState createState() => _HomePageViewState();
// }

// class _HomePageViewState extends State<HomePageView> {
//   int currentIndex = 0;
//   late PageController _pageController;

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           leading: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white,
//           ),
//           actions: [
//             GestureDetector(
//                 onTap: () =>
//                     Navigator.of(context).pushReplacementNamed(SignUp.id),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'skip',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ))
//           ],
//         ),
//         body: PageView.builder(
//             controller: _pageController,
//             itemCount: kOnBoardingItems.length,
//             onPageChanged: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Container(
//                 height: MediaQuery.of(context).size.height * 1,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       colors: [Color(0xffFFF122), Color(0xffFF5603)],
//                       begin: FractionalOffset.topCenter,
//                       end: FractionalOffset.bottomCenter),
//                 ),
//                 // child: Container(
//                 //   height: 100,
//                 //   width: 100,
//                 //   decoration: BoxDecoration(
//                 //     //color: Colors.white,
//                 //     image: DecorationImage(
//                 //         image: AssetImage('assets/images/john_brave.jpg'), fit: BoxFit.cover),
//                 //   ),
//                 // ),
//                 //child: Image(image: AssetImage('assets/images/john_brave.jpg'),),
//                 child: Stack(fit: StackFit.loose, children: [
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     left: 0,
//                     child: Container(
//                       width: double.infinity,
//                       height: MediaQuery.of(context).size.height * 0.5,
//                       //color: Colors.blue,

//                       color: Colors.white,
//                       child: Container(
//                         padding: EdgeInsets.only(
//                           left: MediaQuery.of(context).size.width * 0.07,
//                           top: MediaQuery.of(context).size.height * 0.06,
//                           right: MediaQuery.of(context).size.width * 0.07,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Expanded(child: SizedBox()),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: List.generate(kOnBoardingItems.length,
//                                   (index) => buildDot(index)),
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.07,
//                             ),
//                             Text(
//                               kOnBoardingItems[currentIndex].displayText,
//                               style: TextStyle(fontSize: 16),
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.01,
//                             ),
//                             Container(
//                               alignment: Alignment.bottomRight,
//                               child: currentIndex < kOnBoardingItems.length - 1
//                                   ? GestureDetector(
//                                       onTap: () {
//                                         // add a void callback here
//                                         setState(() {
//                                           currentIndex = currentIndex + 1;
//                                         });
//                                         _pageController.nextPage(
//                                             duration:
//                                                 Duration(milliseconds: 100),
//                                             curve: Curves.bounceIn);
//                                       },
//                                       child: Text(
//                                         'Next',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ))
//                                   : GestureDetector(
//                                       onTap: () =>
//                                           Navigator.pushReplacementNamed(
//                                               context, SignUp.id),
//                                       child: Material(
//                                         elevation: 5,
//                                         borderRadius: BorderRadius.circular(15),
//                                         color: Color(0xff320104),
//                                         child: Container(
//                                           height: 50,
//                                           width: double.infinity,
//                                           child: Center(
//                                             child: Text(
//                                               'Continue',
//                                               style: TextStyle(
//                                                   color: Colors.white),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                             ),
//                             SizedBox(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.05)
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                       child: ClipPath(
//                     clipper: WaveClipper(),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(kOnBoardingItems[index].image),
//                               fit: BoxFit.cover)),
//                     ),
//                   )),
//                 ]),
//               );
//             }));
//   }
// }