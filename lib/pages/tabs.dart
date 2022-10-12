// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'tabs/Setting.dart';
import 'tabs/Home.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int image_num = 0;
  String topImage = "images/animal1.png";
  List topImages = [
    "images/animal1.png",
    "images/animal2.png",
    "images/animal1.png"
  ];
  List directions = ["/start", "/start2", "/start"];

  String getDirection(int i) {
    return directions[i];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  // width: 200,
                  // height: 200,
                  child: Image(image: AssetImage(topImage)),
                )),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.pushNamed(context, getDirection(image_num));
              },
              child: Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 70),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/bottombutton.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Text("start",
                      style: TextStyle(
                          fontFamily: 'test',
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 253, 230, 230)))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: topImages
                  .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            topImage = e;
                            image_num = topImages.indexOf(e);
                          });
                        },
                        child: Container(
                          child: Container(
                              width: 100,
                              height: 130,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/tabsbg.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Image(
                                  image: AssetImage(e),
                                ),
                              )),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.pushNamed(context, '/timetable');
                  },
                  child: Container(
                      width: 100,
                      height: 40,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/bottombutton.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Text("timetable",
                          style: TextStyle(
                              fontFamily: 'test',
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 253, 230, 230)))),
                ),
                GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.pushNamed(context, '/setting');
                    },
                    child: Container(
                        width: 100,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/bottombutton.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Text("setting",
                            style: TextStyle(
                                fontFamily: 'test',
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 253, 230, 230)))))
              ],
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
      // body: this._pageList[this._currentIndex],

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: this._currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       this._currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "home"
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "setting"
      //     )
      //   ],
      // ),
    );
  }
}
