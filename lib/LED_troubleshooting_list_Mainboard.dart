import 'package:faultcodes/LED_text_section.dart';
import 'package:flutter/material.dart';
import 'package:faultcodes/picture_container.dart';

class MainBoardLED extends StatelessWidget {
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
                  "Main board LED",
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
                    PictureContainer('images/LED_Overview.jpg'),
                    Container(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
                      child: Text(
                        "To troubleshoot an alarm that arises before the teach pendent is ready to display, check the status LEDs (green) on the main board at power on. After power on, the LEDs light as described in steps 1 to end, in the order described. If an alarm is detected, the step in which the alarm occured can be determined from which LEDs are lit.\n \nNOTE pics below (Black is on & white is off).",
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    PictureContainer('images/LED1.jpg'),
                    TextSectionLEDStyle(
                      "1. After power on, all LED's are lit.",
                      "Try getting to Bmon menu.\n1. If yes Replace the mainboard.\n2. If no replace the CPU card.",
                    ),
                    PictureContainer('images/LED2.jpg'),
                    TextSectionLEDStyle(
                      "2. Software operation start up.",
                      "1. replace the CPU card.\n2. Replace the mainboard.",
                    ),
                    PictureContainer('images/LED3.jpg'),
                    TextSectionLEDStyle(
                      "3. The initialization of dram on the CPU card is completed.",
                      "1. replace the CPU card.\n2. Replace the mainboard.",
                    ),
                    PictureContainer('images/LED4.jpg'),
                    TextSectionLEDStyle(
                      "4. The initialization of DPRAM on the communication IC is completed.",
                      "1. replace the CPU card.\n2. Replace the mainboard.\n3. Replace the FROM/SRAM module (Try loading an image if it works the FROM/SRAM module is good and does not need to be replaced).",
                    ),
                    PictureContainer('images/LED5.jpg'),
                    TextSectionLEDStyle(
                      "5. The initialization of communication IC is completed.",
                      "1. replace the CPU card.\n2. Replace the mainboard.\n3. Replace the FROM/SRAM module.",
                    ),
                    PictureContainer('images/LED6.jpg'),
                    TextSectionLEDStyle(
                      "6. The loading of the basic software is completed.",
                      "1. Replace the mainboard.\n2. Replace the FROM/SRAM module.",
                    ),
                    PictureContainer('images/LED7.jpg'),
                    TextSectionLEDStyle(
                      "7. Basic software start up.",
                      "1. Replace the mainboard.\n2. Replace the FROM/SRAM module. \n3. Check fuses on power supply, replace if needed. \n4. Replace power supply.",
                    ),
                    PictureContainer('images/LED8.jpg'),
                    TextSectionLEDStyle(
                      "8. Start up of communication with the teach pendant.",
                      "1. Replace the mainboard.\n2. Replace the FROM/SRAM module.",
                    ),
                    PictureContainer('images/LED9.jpg'),
                    TextSectionLEDStyle(
                      "9. The loading of optional software is completed.",
                      "1. Replace the mainboard.\n2. Replace the process I/O board.",
                    ),
                    PictureContainer('images/LED10.jpg'),
                    TextSectionLEDStyle(
                      "10. DI/DO initialization.",
                      "1. Replace the"
                          " FROM/SRAM module.\n2. Replace the mainboard.",
                    ),
                    PictureContainer('images/LED11.jpg'),
                    TextSectionLEDStyle(
                      "11. The preparation of the SRAM module is completed.",
                      "1. Replace the axis control card. NOTE Look if the fiber optic is good and if position is good or off (bad).\n2. Replace the mainboard. \n3. Replace the servo amp.",
                    ),
                    PictureContainer('images/LED12.jpg'),
                    TextSectionLEDStyle(
                      "12. Axis control card initialization.",
                      "1. Replace the axis control card.\n2. Replace the mainboard. \n3. Replace the servo amp.",
                    ),
                    PictureContainer('images/LED13.jpg'),
                    TextSectionLEDStyle(
                      "13. Calibration is completed.",
                      "1. Replace the axis control card.\n2. Replace the mainboard. \n3. Replace the servo amp. NOTE Check the 2 LED's on the servo board. If top one is staying on, check Fuse 3 (middle one). If fuse is good probably a bad servo amp..",
                    ),
                    PictureContainer('images/LED14.jpg'),
                    TextSectionLEDStyle(
                      "14. Start up of power application for the servo system.",
                      "1. Replace the main board.",
                    ),
                    PictureContainer('images/LED15.jpg'),
                    TextSectionLEDStyle(
                      "15. Program execution.",
                      "1. Replace the main board.\n2. Replace the process I/O board.",
                    ),
                    PictureContainer('images/LED16.jpg'),
                    TextSectionLEDStyle(
                      "16. DI/DO output startup.",
                      "1. Replace the main board.",
                    ),
                    PictureContainer('images/LED17.jpg'),
                    TextSectionLEDStyle(
                      "17. Initialization is terminated.",
                      "1. Initialization has ended normally.",
                    ),
                    PictureContainer('images/LED18.jpg'),
                    TextSectionLEDStyle(
                      "18. Normal status.",
                      "1. Status LEDs 1 & 2 blink when the system is operating normally.",
                    ),
                  ],
                ),
              ),
            )));
  }
}
