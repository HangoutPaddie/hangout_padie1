import 'package:flutter/material.dart';

class HomeSections extends StatelessWidget {
  final List list;
  const HomeSections({
    required this.list,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // color: Colors.red,
          ),
      height: MediaQuery.of(context).size.height * 0.3,
      //width: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(list[index].image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      list[index].location,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      list[index].State,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (i) {
                        return Icon(
                          Icons.star,
                          size: 15,
                          color: list[index].rating <= i
                              ? Colors.grey[300]
                              : const Color(0xffFFC810),
                          //margin: EdgeInsets.symmetric(
                          //   horizontal: 10),
                        );

                        // buildRating(kTopHangoutSpots[index]
                        //     .rating
                        //     .round());
                      }),
                    )
                  ]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
