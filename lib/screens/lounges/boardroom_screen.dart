import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/constant.dart';
import 'package:hangout_padie/widgets/custom_body_text.dart';
import 'package:hangout_padie/widgets/custom_header.dart';
import 'package:hangout_padie/widgets/custom_navbar.dart';

class BoardroomScreen extends StatefulWidget {
  static String id = 'BoardroomScreen';
  const BoardroomScreen({Key? key}) : super(key: key);

  @override
  _BoardroomScreenState createState() => _BoardroomScreenState();
}

class _BoardroomScreenState extends State<BoardroomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomHeader(),
              CustomBodyText(
                firstLocation: 'THE BOARDROOM',
                secondLocation: 'Gbagada, Lagos',
                myText: "The boardroom is an exciting place to be. "
                    "It is situated at the heartbeat of Lagos on Victoria Island, see more....",
                myImage: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        boardroomItemList[index].loungeImageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
