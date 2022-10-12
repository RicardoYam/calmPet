import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassData extends StatefulWidget {
  const ClassData({Key? key}) : super(key: key);

  @override
  _ClassDataState createState() => _ClassDataState();
}

class _ClassDataState extends State<ClassData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("ClassData"),
            centerTitle: true,
            toolbarHeight: 50),
        body: Container(

        ));
  }
}
