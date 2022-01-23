import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../constants.dart';

class ArtGalleries extends StatelessWidget {
  static String id = 'Art_Galleries';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Color(0XFFFF5403),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.of(context).pushReplacementNamed(Onboarding.id);
            },
            icon: Icon(
              Icons.search,
              color: Color(0xff6C6E6D),
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 60, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('ART GALLERIES/MUSEUM', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.only(bottom: 30),
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 0, bottom: 30),
                  scrollDirection: Axis.vertical,
                  itemCount: KCategories.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(KCategories[index].navPage);
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(KCategories[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(child: SizedBox()),
                            Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(KCategories[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
