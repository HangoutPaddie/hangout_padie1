import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/export.dart';


class CustomBodyText extends StatelessWidget {
  String myText;
  Widget Function(BuildContext, int) myImage;
  String firstLocation;
  String secondLocation;

  CustomBodyText({
    required this.myText,
    required this.myImage,
    required this.firstLocation,
    required this.secondLocation,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  firstLocation,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Text(
                  secondLocation,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.liquor,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Bar & Lounge',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Opens 10am',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.local_atm_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Entry fee: free',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        myText,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.32,
            width: double.infinity,
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: myImage,
                    itemCount: cubanaItemList.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}