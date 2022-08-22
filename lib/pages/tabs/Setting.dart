import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 300.0),
      child: ListView(
        padding: const EdgeInsets.only(left: 5.0),
        children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
                "https://p.qqan.com/up/2022-1/16412730749939818.jpg"),
          ),
          _buildListItem("Duration time", Icons.lock, () {}),
          _buildListItem("Appointment", Icons.timer, () {}),
          _buildListItem("xxxx", Icons.abc, () {})
        ],
      ),
    );
  }

  Widget _buildListItem(String title, IconData iconData, VoidCallback action) {
    final textStyle = TextStyle(
        color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.w600);

    return InkWell(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, bottom: 5.0, top: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 35.0,
              height: 35.0,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              alignment: Alignment.center,
              child: Icon(iconData, color: Colors.white, size: 24.0),
            ),
            Text(title, style: textStyle),
            Expanded(child: Container()),
            IconButton(
                icon: Icon(Icons.chevron_right, color: Colors.black26),
                onPressed: action)
          ],
        ),
      ),
    );
  }
}
