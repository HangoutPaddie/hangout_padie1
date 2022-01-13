import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget? child;

  const BackgroundContainer({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,

      //color: Colors.blue,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
