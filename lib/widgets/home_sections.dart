import 'package:flutter/material.dart';

class HomeSections extends StatelessWidget {
  List list;
  HomeSections({required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            // color: Colors.red,
            ),
        height: MediaQuery.of(context).size.height * 0.3,
        //width: 300,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.only(right: 20),
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
                    Expanded(child: SizedBox()),
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          list[index].location,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(list[index].State),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (i) {
                            return Icon(
                              Icons.star,
                              size: 15,
                              color: list[index].rating <= i
                                  ? Colors.grey[300]
                                  : Color(0xffFFC810),
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
            }));
  }
}
