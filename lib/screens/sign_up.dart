import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangout_padie/model/user_model.dart';
import 'package:hangout_padie/screens/welcome.dart';
import 'package:hangout_padie/screens/login.dart';
import 'package:hangout_padie/widgets/background_container.dart';
import '../widgets/authentication_form.dart';

class SignUp extends StatefulWidget {
  static String id = 'signUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    String url = 'https://api.hangoutpadie.com/register/';
    var dio = Dio();
    final sendData = {
      'api_key': 'HangOutPadie_Aiwxn3r8NYb899Yu3SJAuiwe37GG7878erfG7',
      "first_name": fName,
      "last_name": lName,
      "email_address": email,
      "password": password
    };
    Response response = await dio.post(url, data: sendData);
    if (response.statusCode == 201) {
      final body = await response.data;
      String userMail;
      String userFirstName;
      String userLastName;
      print(body);
      userFirstName = body['data']['first_name'];
      userLastName = body['data']['last_name'];
      userMail = body['data']['email_address'];
      UserModel _user = await UserModel(
          userMail: userMail,
          userFirstName: userFirstName,
          userLastName: userLastName);
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (_) => Welcome(user: _user)));
      setState(() {
        loading = false;
      });
      //print(body['status']);
      // UserModel user = UserModel(userMail: body[], userPassword: userPassword)

    } else {
      print(response.statusCode);
      setState(() {
        loading = false;
      });
    }

    //dio.post(path)

// var request = http.Request('POST', Uri.parse('http://api.hangoutpadie.com/register'));
// request.body = '''{\r\n    "api_key": "{api_key}",\r\n    "first_name": "John",\r\n    "last_name": "Doe",\r\n    "email_address": "example@mail.com",\r\n    "password": "123456789"\r\n}''';
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
  }

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
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_image.png'),
                  fit: BoxFit.cover,
                  //colorFilter:,
                ),
                color: Colors.black,
                backgroundBlendMode: BlendMode.multiply),
            child: Container(
              //color: Colors.black,
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.07,
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                children: [
                  // Container(
                  //   height: 100,
                  //   width: double.infinity,
                  //   child: Image(
                  //     image: AssetImage('assets/images/logo.png'),
                  //     //fit: BoxFit.cover,
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Text(
                    'WELCOME TO HANGOUT PADIE',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  AuthenticationForm(
                    register: true,
                    submit: submit,
                    loading: loading,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
