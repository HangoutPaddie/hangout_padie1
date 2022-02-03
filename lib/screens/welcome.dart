import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hangout_padie/screens/changes_password.dart';
import 'package:hangout_padie/screens/edit_profile.dart';
import 'package:hangout_padie/widgets/tab_submit_button.dart';
import '../model/user_model.dart';
import '../screens/bottom_nav_screens/booking.dart';
import '../screens/bottom_nav_screens/contact.dart';
import '../screens/bottom_nav_screens/home.dart';
import '../screens/bottom_nav_screens/profile.dart';
import '../screens/onboarding.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class Welcome extends StatefulWidget {
  static String id = 'Welcome';

  UserModel? user;
  Welcome({this.user});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<Widget> screens = [Home(), Contact(), Booking(), Profile()];
  int currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text(
      //     'Welcome',
      //     style: TextStyle(color: Colors.black, fontSize: 16),
      //   ),

      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).pushReplacementNamed(Onboarding.id);
      //       },
      //       icon: Icon(
      //         Icons.search,
      //         color: Color(0xff6C6E6D),
      //         size: 30,
      //       ),
      //     ),
      //   ],
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        index: currentIndex,
        onTap: onTap,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader()

            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.highlight_remove),
                onPressed: Navigator.of(context).pop,
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(Editprofile.id);
              },
              leading: const FaIcon(Icons.location_on_outlined),
              title: const Text(
                'Edit Profle',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
                leading: FaIcon(
                  Icons.settings_input_composite_outlined,
                ),
                title: Text(
                  'Changes Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(ChangePassword.id);
                }),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: TabSubmitButton(title: 'BOOK NOW'),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('SIGN OUT'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(50, 40),
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
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
