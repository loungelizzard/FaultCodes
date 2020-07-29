import 'package:flutter/material.dart';
import 'package:faultcodes/fuse_list.dart';
import 'package:faultcodes/buttons.dart';
import 'package:faultcodes/servo_list.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Color(0xFFFF1744),
              title: Center(
                child: Text(
                  "Troubleshooting Tips",
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('images/tips.jpg'),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
//                    CircuitboardButton(
//                        Colors.redAccent, "Circuitboard Troubleshooting"),
                    FuseButton(Colors.orange, "Fuse Troubleshooting"),
                    LedMenuButton(Colors.deepOrange, "LED Troubleshooting"),
                    ServoButton(Colors.cyan, "Mastering"),
                    ServoButton(
                        Colors.indigo, "7 Segment Display Troubleshooting"),
                    ServoButton(Colors.indigo, "Status Lights Troubleshooting"),
                  ],
                ),
              ),
            )));
  }
}
