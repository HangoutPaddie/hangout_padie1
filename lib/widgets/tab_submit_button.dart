import 'package:flutter/material.dart';

class TabSubmitButton extends StatelessWidget {
  String title;
  //VoidCallback onPressed;
  TabSubmitButton({
    //required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title),
      style: ElevatedButton.styleFrom(
        primary: Color(0XFFFF5403),
        onPrimary: Colors.white,
        fixedSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed:() {},
    );
  }
}
