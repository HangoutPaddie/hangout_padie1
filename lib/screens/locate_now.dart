import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hangout_padie/widgets/registration_botton.dart';

class LocateNow extends StatefulWidget {
  static String id = 'Locate_Now';

  double latitude;
  double longitude;
  String address;
  LocateNow(
      {required this.latitude, required this.longitude, required this.address});

  @override
  State<LocateNow> createState() => _LocateNowState();
}

class _LocateNowState extends State<LocateNow> {
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
                    widget.address,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 000.5,
            width: double.infinity,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(widget.latitude, widget.longitude),
                zoom: 20,
              ),
              //mapType: MapType.normal,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RegisterButton(
                title: Text("LOCATE NOW"),
                icon: FontAwesomeIcons.locationArrow),
          ),
        ],
      ),
    );
  }
}
