import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/screens/lounges/boardroom_screen.dart';
import 'package:hangout_padie/widgets/event_tile.dart';

class CustomHomeGridSection extends StatelessWidget {
  String title;
  CustomHomeGridSection({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                const Text(
                  'view all',
                  style: TextStyle(color: Color(0XFFFF5403)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  itemCount: kTopHangoutSpots.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed(BoardroomScreen.id),
                      child: EventTile(
                          imageUrl: kTopHangoutSpots[index].image,
                          title: kTopHangoutSpots[index].location),
                    );
                  }),
            ),
          ],
        ));
  }
}
