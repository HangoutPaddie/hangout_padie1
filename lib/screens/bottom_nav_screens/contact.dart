import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import '../../widgets/tab_submit_button.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_image.png'),
          fit: BoxFit.cover,
        ),

        // color: Colors.black,
        // backgroundBlendMode: BlendMode.multiply,
        //colorFilter:,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 70),
        height: MediaQuery.of(context).size.height,
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
        child: Column(
          children: [
            Center(
                child: Container(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 200,
                width: 200,
              ),
            )),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Text('Email: info@hangoutpadie.com',
                style: TextStyle(color: Color(0XFFF49610), fontSize: 18)),
            SizedBox(height: 15),
            Text('Hotline: +234xxxxxxxxxx',
                style: TextStyle(color: Color(0XFFF49610), fontSize: 18)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow Us on ',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.instagram,
                    color: Colors.white, size: 18),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.facebook,
                    color: Colors.white, size: 18),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.twitter, color: Colors.white, size: 18)
              ],
            ),
            //SizedBox(height: 15),
            Text(
              '@HangoutPadie',
              style: TextStyle(color: Color(0XFFF49610), fontSize: 18),
            ),
            Expanded(flex: 3, child: SizedBox()),
            /* TabSubmitButton(
              title: 'CHAT NOW',
            ),*/
            Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
