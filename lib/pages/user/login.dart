// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300.0,
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          SizedBox(
            width: 300.0,
            child: TextField(
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          ),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () => Navigator.pushNamed(context, '/tabs'),
          )
        ],
      ),
    ));
  }
}
