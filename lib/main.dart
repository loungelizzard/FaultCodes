import 'package:flutter/material.dart';
import 'package:faultcodes/servo_list.dart';
import 'package:faultcodes/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fanuc Fault Codes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color(0xFFFF1744),
              title: Center(
                child: Text(
                  "Pick The Fault Name or Troubleshooting Tips",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('images/Walle.jpg'),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ServoButton(Colors.cyan, "Coming Soon"),
                    ServoButton(Colors.orange, "Coming Soon"),
                    ServoButton(Colors.deepOrange, "Coming Soon"),
                    ServoButton(Colors.indigo, "Servo"),
                    TroubleshootingButton(
                        Colors.redAccent, "Troubleshooting Tips"),
                  ],
                ),
              ),
            )));
  }
}
//"1. .\n2. .\n3. .\n4. .\n5. .\n6. .\n7. ."
