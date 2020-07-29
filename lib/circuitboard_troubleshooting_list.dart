import 'package:flutter/material.dart';
import 'package:faultcodes/text_section_styles.dart';

class Circuitboard extends StatelessWidget {
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
                  "Circuitboard Troubleshooting",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('images/circuit.jpg'),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              constraints: BoxConstraints.expand(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextSectionServoStyle(
                        "Servo-001",
                        "Operator Panel E-stop",
                        "The EMERGENCY STOP button on the operator panel was pressed.\n \n NOTE If this fault is issued together with SRVO-213, a fuse may have blown. Take the same actions as for SRVO-213.",
                        "1.  Twist the operator panel EMERGENCY STOP button clockwise to release it, then press RESET.\n2.  Check the wires connecting between the E-stop board (CRT27) for continuity. If an open wire is found, replace the entire harness.\n3. Check the wires connecting the teach pendent to the E-stop board (CRS36) for continuity. If an open wire is found replace the entire harness.\n4. With the E-stop in the released position, check for continuity across the terminals of the switch. If continuity is not found, the E-stop button is broken. Replace the E-stop button or the operator's panel.\n5. Replace the teach pendant.\n6. Replace the E-stop board.\n7. Preform a complete controller backup to save all your programs and settings, then replace the main board."),
                    TextSectionServoStyle(
                        "Servo-002",
                        "Teach Pendant E-stop",
                        "The EMERGENCY STOP button on the teach pendant was pressed.",
                        "1.  Twist the teach pendant EMERGENCY STOP button clockwise to release it, then press RESET.\n2.  If this alarm cannot be reset, replace the teach pendant."),
                  ],
                ),
              ),
            )));
  }
}

class CircuitboardButton extends StatelessWidget {
  final Color _color;
  final String _text;

  CircuitboardButton(this._color, this._text);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: 300.0,
      height: 80.0,
      child: new RaisedButton(
          color: _color,
          child: new Text(
            _text,
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Circuitboard()),
            );
          }),
    );
  }
}
