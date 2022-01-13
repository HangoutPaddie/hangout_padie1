import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangout_padie/screens/login.dart';
import 'package:hangout_padie/widgets/background_container.dart';
import '../widgets/authentication_form.dart';

class SignUp extends StatelessWidget {
  static String id = 'signUp';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    //SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.07,
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      //fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'WELCOME TO HANGOUT PADIE',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Get ready to be hang out',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AuthenticationForm(
                    register: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Already a user? Login '),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, Login.id),
                        child: Text(
                          'here',
                          style: TextStyle(color: Colors.white),
                        )),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text('Or continue with'),
                          SizedBox(width: 15),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.flip_camera_ios_rounded),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.flip_camera_ios_rounded)
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
