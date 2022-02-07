import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hangout_padie/constants.dart';
import 'package:hangout_padie/screens/lounges/cubana_screen.dart';
import '../widgets/event_tile.dart';

class CustomHomeSection extends StatelessWidget {
  String title;
  Axis scrollDirection;
  double childHeight;
  double childWidth;
  double containerHeight;
  List list;

  CustomHomeSection({
    required this.title,
    this.scrollDirection = Axis.vertical,
    required this.childHeight,
    required this.childWidth,
    required this.containerHeight,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: scrollDirection == Axis.vertical
          ? const EdgeInsets.all(15)
          : EdgeInsets.only(left: 15),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: scrollDirection == Axis.horizontal
                  ? const EdgeInsets.only(
                      right: 15,
                    )
                  : EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  const Text(
                    'view all',
                    style: TextStyle(color: Color(0XFFFF5403)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: containerHeight,
                child: ListView.builder(
                    scrollDirection: scrollDirection,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: scrollDirection == Axis.horizontal
                            ? EdgeInsets.only(right: 20)
                            : EdgeInsets.only(bottom: 20),
                        height: childHeight,
                        width: childWidth,
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.of(context).pushNamed(CubanaScreen.id),
                          child: EventTile(
                            title: list[index].location,
                            imageUrl: list[index].image,
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
