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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Username",
                          style: TextStyle(
                              fontFamily: 'test',
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 253, 230, 230))),
                      SizedBox(width: 120.0)
                    ],
                  ),
                  SizedBox(height: 5.0),
                  SizedBox(
                    width: 210.0,
                    height: 35.0,
                    child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            hintText: "1234567",
                            filled: true,
                            fillColor: Color.fromARGB(51, 5, 20, 110)),
                        style: TextStyle(fontFamily: 'test', fontSize: 20.0)),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Password",
                          style: TextStyle(
                              fontFamily: 'test',
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 253, 230, 230))),
                      SizedBox(width: 120.0)
                    ],
                  ),
                  SizedBox(height: 5.0),
                  SizedBox(
                    width: 210.0,
                    height: 35.0,
                    child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            hintText: "XXXXXXX",
                            filled: true,
                            fillColor: Color.fromARGB(51, 5, 20, 110)),
                        style: TextStyle(fontFamily: 'test', fontSize: 20.0)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 100.0,
                          height: 35.0,
                          child: ElevatedButton(
                            child: Text("Login",
                                style: TextStyle(
                                    fontFamily: 'test', fontSize: 16.0)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/tabs'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 100.0,
                        height: 35.0,
                        child: ElevatedButton(
                            child: Text("Register",
                                style: TextStyle(
                                    fontFamily: 'test', fontSize: 16.0)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/register'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            )));
  }
}
