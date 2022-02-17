import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/model/user_model.dart';
import 'package:hangout_padie/screens/welcome.dart';
import 'package:hangout_padie/screens/authentication/sign_up.dart';
import '../../widgets/authentication_form.dart';
import '../../widgets/background_container.dart';
import '../booking_screen.dart';

class Login extends StatefulWidget {
  static String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false;

  void submit(
    String fName,
    String lName,
    String email,
    String password,
    BuildContext ctx,
  ) async {
    setState(() {
      loading = true;
    });
    String url = 'https://api.hangoutpadie.com/auth/login/';
    var dio = Dio();
    final sendData = {
      'api_key': 'HangOutPadie_Aiwxn3r8NYb899Yu3SJAuiwe37GG7878erfG7',
      "email_address": email,
      "password": password
    };
    Response response = await dio.post(url, data: sendData);
    if (response.statusCode == 200) {
      final body = response.data;
      //print(body);
      String userMail;
      String userFirstName;
      String userLastName;
      userFirstName = body['data']['user_details']['first_name'];
      userLastName = body['data']['user_details']['last_name'];
      userMail = body['data']['user_details']['email_address'];
      UserModel _user = await UserModel(
          userMail: userMail,
          userFirstName: userFirstName,
          userLastName: userLastName);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('You are successfully logged in'),
          duration: Duration(seconds: 5),
          //action: SnackBarAction(label: 'OK',onPressed: () => ,),
        ),
      );
      await Future.delayed(Duration(seconds: 2));
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>
          const  BookingScreen()
          ,
        ),
      );
      setState(() {
        loading = false;
      });
    } else {
      print(response.statusCode);
      setState(() {
        loading = false;
      });
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_image.png'),
                  fit: BoxFit.cover,
                  //colorFilter:,
                ),
                // color: Colors.black,
                // backgroundBlendMode: BlendMode.multiply,
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.orange.withOpacity(0.1),
                    Colors.orange.withOpacity(0.1)
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07,
                    top: MediaQuery.of(context).size.height * 0.05,
                    right: MediaQuery.of(context).size.width * 0.07,
                  ),
                  child: Column(
                    children: [
                    const  Text(
                        'WELCOME BACK',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                     const SizedBox(
                        height: 30,
                      ),
                      AuthenticationForm(
                        register: false,
                        submit: submit,
                        loading: loading,
                        resetPassword: resetPassword,
                      ),
                     const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  resetPassword(String fName, String lName, String email, String passwword,
      BuildContext context) async {
    FocusScope.of(context).unfocus();
    setState(() {
      loading = true;
    });
    String url = 'https://api.hangoutpadie.com/auth/reset_password/';
    var dio = Dio();
    final sendData = {
      'api_key': 'HangOutPadie_Aiwxn3r8NYb899Yu3SJAuiwe37GG7878erfG7',
      "email_address": email,
    };
    Response response = await dio.post(url, data: sendData);
    if (response.statusCode == 200) {
      final body = response.data;

      print(body['status']);

      setState(() {
        loading = false;
      });
      String text = 'some text';
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kindly check $email for a reset password link'),
          duration: Duration(seconds: 5),
          //action: SnackBarAction(label: 'OK',onPressed: () => ,),
        ),
      );
    } else {
      print(response.statusCode);
      setState(() {
        loading = false;
      });
    }
  }
}
