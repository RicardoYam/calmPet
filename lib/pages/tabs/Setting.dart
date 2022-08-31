import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text("3801"),
            // centerTitle: true,
            leading: Container(),
            toolbarHeight: 0),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/settingbg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.44,
                    top: MediaQuery.of(context).size.height * 0.35,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          height: MediaQuery.of(context).size.height * 0.08,
                          alignment: Alignment.center,
                          child: Text("Account\nManagement",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'test',
                                  fontSize: 20.0,
                                  color: Color.fromARGB(255, 253, 230, 230))),
                        ))),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.40,
                    top: MediaQuery.of(context).size.height * 0.50,
                    child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.pushNamed(context, '/classData');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.46,
                          height: MediaQuery.of(context).size.height * 0.1,
                          // color: Colors.white,
                          child: Text("Class Data",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'test',
                                  fontSize: 20.0,
                                  color: Color.fromARGB(255, 253, 230, 230))),
                        ))),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.40,
                    top: MediaQuery.of(context).size.height * 0.66,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(context, '/projectionMode');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.08,
                        alignment: Alignment.center,
                        // color: Colors.white,
                        child: Text("Projection\nMode",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'test',
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 253, 230, 230))),
                      ),
                    )),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.3,
                    top: MediaQuery.of(context).size.height * 0.83,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/bottombutton.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.07,
                        alignment: Alignment.center,
                        // color: Colors.white,
                        child: Text("Logged Out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'test',
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 253, 230, 230))),
                      ),
                    ))
              ],
            )));
  }
}
