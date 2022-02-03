import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/tab_submit_button.dart';

class Editprofile extends StatelessWidget {
  static String id = 'EditProfile';

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
              left: 15,
              top: MediaQuery.of(context).size.height * 0.05,
              right: 15,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Column(
              children: [
                // Container(
                //   width: double.infinity,
                //   alignment: Alignment.topLeft,
                //   child: IconButton(
                //     padding: EdgeInsets.zero,
                //     alignment: Alignment.topLeft,
                //     icon: Icon(
                //       Icons.menu_sharp,
                //     ),
                //     onPressed: () {
                //       Scaffold.of(context).openDrawer();
                //     },
                //   ),
                // ),
                const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 23),
                ),
                const SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/onboarding1.png'),
                  radius: 100,
                  backgroundColor: const Color(0XFF7C9EDE),
                  onBackgroundImageError: (exception, stackTrace) =>
                      'Error loading image',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Change Profile Picture',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text('Name: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              initialValue: 'Paul Osho',
                            ),
                          )
                        ]),
                        Row(children: [
                          Text('Email: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              initialValue: 'paulosho2015@gmail.com',
                            ),
                          )
                        ]),
                        Row(children: [
                          Text('Phone Number: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              initialValue: '+2348086473066',
                            ),
                          )
                        ]),
                        Row(children: [
                          Text('Location: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                              ),
                              initialValue: 'Lagos, Nigeria',
                            ),
                          )
                        ]),

                        // Text(
                        //   'Paul Osho',
                        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        // ),
                        // Text(
                        //   'paulosho2015@gmail.com',
                        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        // ),
                        // Text(
                        //   '+2348068473066',
                        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        // ),
                        // Text(
                        //   'Lagos, Nigeria',
                        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        // ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                TabSubmitButton(
                  title: 'UPDATE',
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
