// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';
import 'pages/tabs.dart';
import 'pages/user/login.dart';
import 'pages/user/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/login',
      home: Tabs(),
      routes: {
        '/login':(context) => Login(),
        '/tabs':(context) => Tabs(),
        '/register':(context) => Register()
      },
    );
  }
}

