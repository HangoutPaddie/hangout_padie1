import 'package:flutter/material.dart';
import 'package:hangout_padie/screens/sign_up.dart';
import '../widgets/authentication_form.dart';
import '../widgets/background_container.dart';

class Login extends StatelessWidget {
  static String id = 'Login';

  @override
  Widget build(BuildContext context) {
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
                top: MediaQuery.of(context).size.height * 0.17,
                right: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                children: [
                  Text(
                    'WELCOME BACK',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Get ready to be hooked',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AuthenticationForm(
                    register: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(' New user? Sign Up '),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, SignUp.id),
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
