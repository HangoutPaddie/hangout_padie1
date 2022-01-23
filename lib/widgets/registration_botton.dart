import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/welcome.dart';

class RegisterButton extends StatelessWidget {
  Widget title;
  IconData? icon;
  RegisterButton({
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        //onTap: () => Navigator.of(context).pushReplacementNamed(Home.id),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: Container(
            height: 50,
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title,
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    icon!,
                    //color: Color(0XFFFF5403),
                  )
                  // Container(
                  //   child: Image(
                  //     image: AssetImage(
                  //       'assets/images/google_logo.png',
                  //     ),
                  //   ),
                  //   height: 20,
                  //   width: 20,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
