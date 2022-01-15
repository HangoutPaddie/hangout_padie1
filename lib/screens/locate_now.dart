import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hangout_padie/widgets/registration_botton.dart';

class LocateNow extends StatelessWidget {
  static String id = 'Locate_Now';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.menu), Text('Eko')],
            ),
          ),
          Text(
            'LOCATION',
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ADDRESS',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'SNO, 24, Gift Anita Street, Ayodeji,',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Lagos State',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Container(
              child: Image(
            image: AssetImage('assets/images/background_image.png'),
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RegisterButton(
                title: "LOCATE NOW", icon: FontAwesomeIcons.locationArrow),
          ),
        ],
      ),
    );
  }
}
