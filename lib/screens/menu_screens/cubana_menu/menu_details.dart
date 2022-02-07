import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangout_padie/widgets/constant.dart';
import 'package:hangout_padie/widgets/custom_header.dart';
import 'package:hangout_padie/widgets/custom_menu_container.dart';
import 'package:hangout_padie/widgets/custom_menu_row.dart';
import 'package:hangout_padie/widgets/custom_navbar.dart';

class MenuDetailsScreen extends StatefulWidget {
  static String id = 'MenuDetailScreen';
  const MenuDetailsScreen({Key? key}) : super(key: key);

  @override
  _MenuDetailsScreenState createState() => _MenuDetailsScreenState();
}

class _MenuDetailsScreenState extends State<MenuDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomHeader(),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                ),
                child: Center(
                  child: Text(
                    'DRINKS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Expanded(
                //height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomMenuRow(
                                firstText: 'Alcohol & Beers',
                                secondText: 'view all',
                              ),
                              CustomMenuContainer(
                                drinkImages: menuImages
                                    .menuSubcategoryImages.alcoholImageUrl,
                                imageInt: menuImages.menuSubcategoryImages
                                    .alcoholImageUrl.length,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomMenuRow(
                                firstText: 'Soft Drinks & Juices',
                                secondText: 'view all',
                              ),
                              CustomMenuContainer(
                                drinkImages: menuImages
                                    .menuSubcategoryImages.softdrinksImageUrl,
                                imageInt: menuImages.menuSubcategoryImages
                                    .softdrinksImageUrl.length,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomMenuRow(
                                firstText: 'Cocktails & Special Drinks',
                                secondText: 'view all',
                              ),
                              CustomMenuContainer(
                                drinkImages: menuImages
                                    .menuSubcategoryImages.cocktailImageUrl,
                                imageInt: menuImages.menuSubcategoryImages
                                    .cocktailImageUrl.length,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: const CustomNavBar(),
    );
  }
}