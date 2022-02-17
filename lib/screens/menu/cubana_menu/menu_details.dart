import 'package:flutter/material.dart';
import 'package:hangout_padie/model/cubana_menu.dart';
import 'package:hangout_padie/widgets/export.dart';

//import 'main_menu_screen.dart';

class MenuDetailsScreen extends StatefulWidget {
  final List<SubCategory> subItems;
  const MenuDetailsScreen({Key? key, required this.subItems}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                ),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.72,
                    child: ListView.builder(
                      itemCount: widget.subItems.length,
                      itemBuilder: (context, index) {
                        return CustomMenuRow(
                          images: widget.subItems[index].subcategoryImage,
                          secondText: 'view all',
                          firstText: widget.subItems[index].subcategoryName,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
