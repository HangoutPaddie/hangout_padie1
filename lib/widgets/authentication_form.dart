import 'package:flutter/material.dart';
import '../screens/home.dart';

class AuthenticationForm extends StatefulWidget {
  bool register;

  AuthenticationForm({
    required this.register,
  });
  @override
  _AuthenticationFormState createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        widget.register
            ? Text(
                'Full Name',
                style: TextStyle(fontSize: 12),
              )
            : SizedBox.shrink(),
        widget.register
            ? SizedBox(
                height: 5,
              )
            : SizedBox.shrink(),
        widget.register
            ? Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                child: TextFormField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                ),
              )
            : SizedBox.shrink(),
        widget.register == true
            ? SizedBox(
                height: 23,
              )
            : SizedBox.shrink(),
        Text(
          'Email Address',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: TextFormField(
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          ),
        ),
        SizedBox(
          height: 23,
        ),
        Text(
          'Password',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: TextFormField(
            style: TextStyle(fontSize: 18),
            obscureText: _passwordVisibility,
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _passwordVisibility = !_passwordVisibility;
                      });
                    },
                    child: Icon(_passwordVisibility
                        ? Icons.visibility_off
                        : Icons.visibility)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushReplacementNamed(Home.id),
          child: Material(
          
            elevation: 5,
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff320104),
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  widget.register ? 'Sign Up' : 'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
