// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'tabs/Setting.dart';
import 'tabs/Home.dart';

class Tabs extends StatefulWidget {
  const Tabs({ Key? key }) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;

  List _pageList = [
    Home(),
    Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("3801"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "setting"
            )
          ],
        ),
      );
  }
}