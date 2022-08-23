// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/register.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name",
                          style: TextStyle(
                              fontFamily: 'test',
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 253, 230, 230))),
                      SizedBox(width: 160.0)
                    ],
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: 210.0,
                    height: 30.0,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            filled: true,
                            fillColor: Color.fromARGB(51, 5, 20, 110)),
                        style: TextStyle(fontFamily: 'test', fontSize: 16.0)),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("E-mail",
                          style: TextStyle(
                              fontFamily: 'test',
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 253, 230, 230))),
                      SizedBox(width: 160.0)
                    ],
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: 210.0,
                    height: 30.0,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            filled: true,
                            fillColor: Color.fromARGB(51, 5, 20, 110)),
                        style: TextStyle(fontFamily: 'test', fontSize: 16.0)),
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
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: 210.0,
                    height: 30.0,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            filled: true,
                            fillColor: Color.fromARGB(51, 5, 20, 110)),
                        style: TextStyle(fontFamily: 'test', fontSize: 16.0)),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Grade",
                              style: TextStyle(
                                  fontFamily: 'test',
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 253, 230, 230))),
                          SizedBox(width: 60.0)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Class",
                              style: TextStyle(
                                  fontFamily: 'test',
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 253, 230, 230))),
                          SizedBox(width: 50.0)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                filled: true,
                                fillColor: Color.fromARGB(51, 5, 20, 110)),
                            style:
                                TextStyle(fontFamily: 'test', fontSize: 16.0)),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                filled: true,
                                fillColor: Color.fromARGB(51, 5, 20, 110)),
                            style:
                                TextStyle(fontFamily: 'test', fontSize: 16.0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 120.0,
                          height: 40.0,
                          child: ElevatedButton(
                            child: Text("Cancle",
                                style: TextStyle(
                                    fontFamily: 'test', fontSize: 16.0)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/login'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                      SizedBox(width: 10.0),
                      SizedBox(
                        width: 120.0,
                        height: 40.0,
                        child: ElevatedButton(
                            child: Text("Complete",
                                style: TextStyle(
                                    fontFamily: 'test', fontSize: 16.0)),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/login'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
