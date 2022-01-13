import 'package:flutter/material.dart';
import '../constants.dart';

class AuthenticationForm extends StatefulWidget {
  final bool register;

  const AuthenticationForm({
    required this.register,
    Key? key,
  }) : super(key: key);

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
            ? const Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            : const SizedBox.shrink(),
        widget.register
            ? const SizedBox(
                height: 5,
              )
            : const SizedBox.shrink(),
        widget.register
            ? Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
        widget.register == true
            ? const SizedBox(
                height: 23,
              )
            : const SizedBox.shrink(),
        const Text(
          'Email Address',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: TextFormField(
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: TextFormField(
            style: const TextStyle(
              fontSize: 18,
            ),
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
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushReplacementNamed(
            homeRoute,
          ),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff320104),
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  widget.register ? 'Sign Up' : 'Login',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
