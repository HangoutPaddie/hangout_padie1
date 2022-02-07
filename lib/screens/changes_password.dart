import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/tab_submit_button.dart';

import '../constants.dart';

class ChangePassword extends StatefulWidget {
  static String id = 'ChangePassword';

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisibility = true;
  bool _confirmpasswordVisibility = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 15, top: 80, right: 15, bottom: 15),
            child: Column(
              children: [
                Text(
                  'Change Password',
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  height: 100,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Password',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _passwordController,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter password' : null,
                        style: TextStyle(fontSize: 18),
                        obscureText: _passwordVisibility,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passwordVisibility =
                                        !_passwordVisibility;
                                  });
                                },
                                child: Icon(!_passwordVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Repeat Password',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _confirmpasswordController,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter password' : null,
                        style: TextStyle(fontSize: 18),
                        obscureText: _confirmpasswordVisibility,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _confirmpasswordVisibility =
                                        !_confirmpasswordVisibility;
                                  });
                                },
                                child: Icon(!_confirmpasswordVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10)),
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('UPDATE PASSWORD'),
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.7, 40),
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
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
