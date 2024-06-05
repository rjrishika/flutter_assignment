import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFFE6E6FA), // Lavender color
      child: Column(
        children: <Widget>[
          SizedBox(height: 16.0),
          // Four images with text underneath
          for (var i = 0; i < 4; i++)
            Column(
              children: <Widget>[
                Image.asset('assets/cake.jpg', width: 50.0, height: 50.0),
                SizedBox(height: 8.0),
                Text(
                  'Text $i',
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0), // Space between each image and text
              ],
            ),
        ],
      ),
    );
  }
}