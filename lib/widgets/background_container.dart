import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  Widget? child;

  BackgroundContainer({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,

      //color: Colors.blue,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white),
      child: child,
    );
  }
}
