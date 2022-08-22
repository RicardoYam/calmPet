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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
              width: 200.0,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Username"),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
            width: 200.0,
            child: TextField(
            decoration: InputDecoration(
                hintText: "Password"),
            obscureText: true,
          )),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 90.0,
                height: 40.0,
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: () => Navigator.pushNamed(context, '/tabs'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange
                  ),
              )),
              SizedBox(width: 30.0),
              SizedBox(
                width: 90.0,
                height: 40.0,
                child: ElevatedButton(
                  child: Text("Register"),
                  onPressed: () => Navigator.pushNamed(context, '/'),
              )),
            ],
          )
            ],
          ),
        )
        )
    );
  }
}
