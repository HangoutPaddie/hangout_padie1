import 'package:flutter/material.dart';
//import 'package:hangout_padie/widgets/tab_submit_button.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
        left: 15,
        top: MediaQuery.of(context).size.height * 0.05,
        right: 15,
        bottom: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.topLeft,
              icon: Icon(
                Icons.menu_sharp,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          Text(
            'My Profile',
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/onboarding1.png'),
            radius: 100,
            backgroundColor: Color(0XFF7C9EDE),
            onBackgroundImageError: (exception, stackTrace) =>
                'Error loading image',
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paul Osho',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'paulosho2015@gmail.com',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  '+2348068473066',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Lagos, Nigeria',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          /*TabSubmitButton(
            title: 'BOOK NOW',
          ),*/
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
