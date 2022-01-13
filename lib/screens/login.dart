import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/widgets.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Get ready to be hooked',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AuthenticationForm(
                    register: false,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' New user? Sign Up ',
                      ),
                      GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                                context,
                                signUpRoute,
                              ),
                          child: const Text(
                            'here',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Or continue with',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.flip_camera_ios_rounded,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.flip_camera_ios_rounded,
                        )
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
