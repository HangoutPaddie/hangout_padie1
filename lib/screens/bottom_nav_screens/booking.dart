import 'package:flutter/material.dart';

import '../../constants.dart';
//import '../location/my_location.dart';
//import '../../widgets/tab_submit_button.dart';

class Booking extends StatefulWidget {
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String radioGroupValue = 'null';
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          top: MediaQuery.of(context).size.height * 0.05,
          right: 15,
          bottom: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'MY BOOKING',
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(
              height: 15,
            ),
            Text('View your bookings below'),
            SizedBox(
              height: 10,
            ),
            kLocations.isNotEmpty
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemCount: kLocations.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: RadioListTile<String>(
                              dense: true,
                              tileColor: Color(0XFFEFEDEA),
                              activeColor: Color(0XFFFF5403),
                              groupValue: radioGroupValue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              value: kLocations[index],
                              onChanged: (value) {
                                setState(() {
                                  radioGroupValue = value!;
                                });
                              },
                              title: Text(kLocations[index]),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container(
                    padding: EdgeInsets.only(top: 50),
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Text(
                      'You may not have booked any reservation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
            SizedBox(
              height: 50,
            ),
           /* TabSubmitButton(
              title: 'BOOK NOW',
            ),*/
          ],
        ),
      ),
    );
  }
}
