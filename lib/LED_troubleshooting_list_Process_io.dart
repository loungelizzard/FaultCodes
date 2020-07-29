import 'package:flutter/material.dart';
import 'package:faultcodes/picture_container.dart';
import 'package:faultcodes/text_section_styles.dart';

class ProcessIOLED extends StatelessWidget {
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
                  "Process I/O Board LED",
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
                    PictureContainer('images/Process_I_O_LED_JA_JB.jpg'),
                    TextSectionTitleStyle("JA,JB I/O board"),
                    TextSectionServoStyle(
                      "If the main board or FROM/SRAM module is replaced, the contents of memory WILL BE LOST. Before you replace the unit, make a backup copy of the data. If an alarm is issued, data backup may be disabled. Therefore, backup the contents of memory routinely.",
                      "Alarm 1 LED On",
                      "A communication alarm occured between the main board and process I/O board.",
                      "1. Replace the process I/O board.\n2. Replace the main board.\n3. Replace the I/O link connection cable.",
                    ),
                    TextSectionESTOPStyle(
                      "Alarm 2 LED On",
                      "A fuse on the process I/O board is blown.",
                      "1. Replace the blown fuse on the process I/O board.\n2. Examine the cables and peripheral devices connected to the process I/O board.\n3. Replace the process I/O board.",
                    ),
                    PictureContainer('images/Process_I_O_board_MA.jpg'),
                    PictureContainer('images/Process_I_O_board_MB.jpg'),
                    TextSectionTitleStyle("MA,MB I/O board"),
                    TextSectionESTOPStyle(
                      "ALM 1 (Red)",
                      "An alarm was issued during communication between the main board and process I/O board.",
                      "1. Replace the process I/O board.\n2. Replace the I/O link connection cable.\n3. Replace the main board.",
                    ),
                    TextSectionESTOPStyle(
                      "FALM 1 (Red)",
                      "The fuse on the process I/O board was blown.",
                      "1. Replace the blown fuse on the process I/O board.\n2. Examine the cables and peripheral devices connected to the process I/O board.\n3. Replace the process I/O board.",
                    ),
                  ],
                ),
              ),
            )));
  }
}
