// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/screens/login.dart';
import 'package:hangout_padie/screens/sign_up.dart';
import '../screens/welcome.dart';
import './registration_botton.dart';

class AuthenticationForm extends StatefulWidget {
  bool register;
  Function(
    String fName,
    String lName,
    String email,
    String passwword,
    BuildContext context,
  ) submit;
  bool loading;
  Function(
    String fName,
    String lName,
    String email,
    String passwword,
    BuildContext context,
  )? resetPassword;

  AuthenticationForm(
      {required this.register,
      required this.submit,
      required this.loading,
      this.resetPassword});

  @override
  _AuthenticationFormState createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisibility = true;
  late String fName, lName, email, password;

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //bool loading = false;

  void submit() {
    var myForm = _formKey.currentState;
    FocusScope.of(context).unfocus();
    setState(() {
      widget.loading = true;
    });
    if (myForm!.validate()) {
      myForm.save();

      // print(fNameController.text);
      // print(lNameController.text);
      // print(emailController.text);
      // print(passwordController.text);
    }

    widget.submit(
      fNameController.text,
      lNameController.text,
      emailController.text,
      passwordController.text,
      context,
    );
    setState(() {
      widget.loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (widget.register)
              Text('First Name', style: kTextFieldTitleStyle),
            if (widget.register)
              SizedBox(
                height: 5,
              ),
            if (widget.register)
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                //color: Colors.white,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onSaved: (newValue) => fName = newValue!,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter First Name' : null,
                  controller: fNameController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                ),
              ),
            if (widget.register)
              SizedBox(
                height: 23,
              ),
            if (widget.register) Text('Last Name', style: kTextFieldTitleStyle),
            if (widget.register)
              SizedBox(
                height: 5,
              ),
            if (widget.register)
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                //color: Colors.white,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter Last Name' : null,
                  controller: lNameController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                ),
              ),
            if (widget.register)
              SizedBox(
                height: 23,
              ),
            Text(
              'Email Address',
              style: kTextFieldTitleStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              //color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) => value!.isEmpty ? 'Enter an email' : null,
                controller: emailController,
                style: TextStyle(fontSize: 18),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Password',
              style: kTextFieldTitleStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              //color: Colors.white,
              child: TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                controller: passwordController,
                validator: (value) => value!.isEmpty ? 'Enter password' : null,
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
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            if (!widget.register)
              GestureDetector(
                  onTap: resetPassword,
                  child: Container(
                      child: Text('Forgot password?',
                          style: (TextStyle(color: Colors.white))),
                      alignment: Alignment.bottomRight,
                      width: double.infinity)),
            if (!widget.register)
              SizedBox(
                height: 40,
              ),
            widget.loading
                ? Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator())
                : GestureDetector(
                    onTap: submit,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0XFFFF5403),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            widget.register ? 'SIGN UP' : 'LOGIN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            widget.register
                ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Already a user? Login ',
                        style: TextStyle(color: Colors.white)),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, Login.id),
                        child: Text(
                          'here',
                          style: TextStyle(color: Color(0XFFFF5403)),
                        )),
                  ])
                : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(' New user? Sign Up ',
                        style: TextStyle(color: Colors.white)),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushReplacementNamed(context, SignUp.id),
                        child: Text(
                          'here',
                          style: TextStyle(color: Color(0XFFFF5403)),
                        )),
                  ]),
            widget.register ? SizedBox(height: 20) : SizedBox(height: 40),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'Or',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
            widget.register ? SizedBox(height: 20) : SizedBox(height: 40),
            RegisterButton(
              title: Text('SIGN UP WITH GOOGLE'),
              icon: FontAwesomeIcons.google,
            ),
            SizedBox(
              height: 15,
            ),
            RegisterButton(
              title: Text('SIGN UP WITH APPLE'),
              icon: FontAwesomeIcons.apple,
            ),
          ]),
        ),
      ),
    );
  }

  void resetPassword() {
    if (emailController.text.isEmpty) {
      _formKey.currentState!.validate();
    } else {
      widget.resetPassword!(
        fNameController.text,
        lNameController.text,
        emailController.text,
        passwordController.text,
        context,
      );
    }
  }
}
