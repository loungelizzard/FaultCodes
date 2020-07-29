import 'package:faultcodes/LED_text_section.dart';
import 'package:flutter/material.dart';
import 'package:faultcodes/picture_container.dart';

class PowerSupplyLED extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.transparent,
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
                  "Power Supply LED",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('images/LED.webp'),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              constraints: BoxConstraints.expand(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
//                   TODO Would like page 84 pics instead
                    PictureContainer('images/PowerSupply_Fuses.jpg'),
                    TextSectionLEDStyle(
                      "When ALM LED (Red) turned on, power supply alarm has occured.",
                      "1. Check fuse F4 (+24v) on the power supply unit, and replace if it has blown.\n2. Check the printed circuit boards powered by the DC power supplies (+5v, 15v, and +24v), the relevant units, and cables, and replace them if defective.\n 3. Replace the power supply.",
                    ),
                    TextSectionLEDStyle(
                      "If the PIL LED (Green) does not light, the power supply unit has not been supplied with 200 VAC.",
                      "1. Check fuse F1 on the power supply unit, and replace if it has blown.\n \nNOTE For details why fuse F1 has blown refer to Fuse Troubleshooting Power Supply.\n\n2. Replace the power supply.\n3. Potentially faulty transformer if not getting 200VAC to power supply.",
                    ),
                  ],
                ),
              ),
            )));
  }
}
