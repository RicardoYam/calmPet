// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';
import 'package:front_end/pages/tabs/ClassData.dart';
import 'package:front_end/pages/tabs/ProjectionMode.dart';
import 'package:front_end/pages/tabs/Setting.dart';
import 'package:front_end/pages/tabs/StartAnimal.dart';
import 'package:front_end/pages/tabs/StartAnimal2.dart';
import 'package:front_end/pages/tabs/Timetable.dart';
import 'pages/tabs.dart';
import 'pages/user/login.dart';
import 'pages/user/register.dart';
import 'pages/tabs/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      home: Tabs(),
      routes: {
        '/login': (context) => Login(),
        '/tabs': (context) => Tabs(),
        '/setting': (context) => Setting(),
        '/register': (context) => Register(),
        '/timetable': (context) => TimeTable(),
        '/start': (context) => StartAnimal(),
        '/start2': (context) => StartAnimal2(),
        '/classData': (context) => ClassData(),
        '/projectionMode': (context) => ProjectionMode(),
        '/video' : (context) => VideoApp(),
      },
    );
  }
}
