import 'package:flutter/material.dart';
import 'package:faultcodes/buttons.dart';

class TipsLED extends StatelessWidget {
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
                  "LED Troubleshooting",
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
                    LedESTOPButton(Colors.indigo, "E-Stop"),
                    LedButton(Colors.deepOrange, "Main board"),
                    LedPSButton(Colors.cyan, "Power Supply"),
                    ProcessLEDButton(Colors.redAccent, "Process I/O"),
                    ServoLEDButton(Colors.indigo, "Servo Amp"),
                  ],
                ),
              ),
            )));
  }
}
