import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountManagement extends StatefulWidget {
  const AccountManagement({Key? key}) : super(key: key);

  @override
  _AccountManagementState createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("AccountManagement"),
            centerTitle: true,
            toolbarHeight: 50),
        body: Container(

        ));
  }
}
