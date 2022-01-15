import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/model/user_model.dart';
import 'package:hangout_padie/screens/home.dart';
import 'package:hangout_padie/screens/sign_up.dart';
import '../widgets/authentication_form.dart';
import '../widgets/background_container.dart';

class Login extends StatelessWidget {
  static String id = 'Login';

  void submit(String fName, String lName, String email, String password,
      BuildContext ctx) async {
    String url = 'http://api.hangoutpadie.com/login/';
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
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (_) => Home(user: _user)));
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
                color: Colors.black,
                backgroundBlendMode: BlendMode.multiply,
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.07,
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: MediaQuery.of(context).size.width * 0.07,
                ),
                child: Column(
                  children: [
                    Text(
                      'WELCOME BACK',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    AuthenticationForm(
                      register: false,
                      submit: submit,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
