import 'package:flutter/material.dart';
import 'package:faultcodes/picture_container.dart';
import 'package:faultcodes/text_section_styles.dart';

class ESTOPLED extends StatelessWidget {
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
                  "E-STOP LED",
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
                    PictureContainer('images/Estop_LED.jpg'),
                    TextSectionESTOPStyle(
                      "FU4 (Red) (B-cabinet only)",
                      "When the LED (Red) turned on, the fuse FU4 has blown. 24V for safety DI signal (SFDI) is not supplied.",
                      "1. Check the connection of SFDI on Safety I/O board.\n2. Check the operator's panel cable (CRT27), and replace if needed.\n 3. Replace the E-stop unit.",
                    ),
                    TextSectionESTOPStyle(
                      "24V (Green)",
                      "When the LED does not light, the +24V power for the teach pendent and internal circuit is not supplied.",
                      "1. Check the CRP33 (A-cabinet) or CP5A (B-cabinet) connector and check that 24V is supplied. When 24V is not supplied, check CP6 connector and fuse F# of the power supply unit.\n2. Check fuse F1 on E-stop board.\n3. Replace the E-stop unit.",
                    ),
                    TextSectionESTOPStyle(
                      "EXT24/24EXT (Green)",
                      "When the LED (Green) does not light, the EXT24V power for E-stop circuit is not supplied.",
                      "1. Check the voltages of EXT24V and EXT0V (TBOP14 for A-cabinet or TBOP10 for B-cabinet). If +EXT24V or EXT0V is not used, check the jumper pin between EXT24V and INT24V or between EXT0V and INT0V.\n2. If the FENCE, SVOFF, and EXENG is used, these signals may be connected to 0V or ground. Check these cables. (Also check CR33)\n3. Replace the E-stop unit.\n4. Check the teach pendent cable, replace if needed.\n5. Check the teach pendent, replace if needed.\n6. Check the operator's panel cable (CRT27), replace if needed.",
                    ),
                    PictureContainer('images/Estop_LED2.jpg'),
                    TextSectionESTOPStyle(
                      "SVON1/SVON2 (Green)",
                      "These LEDs (Green) indicate the status of SVON1/SVON2 signals from the E-stop board to the servo amp. When the SVON1 and SVON2 (Green) turned on, the servo amp is ready to energize.",
                      "None robot running Normal.",
                    ),
                    //TODO add pic of duration of LED's PG 95
//                    PictureContainer('images/LED17.jpg'),
                    //TODO add pic of Link LED's PG 95
//                    PictureContainer('images/LED17.jpg'),
                    TextSectionESTOPStyle(
                      "Link 1/ Link 2 (Green)",
                      "If link 1 or Link 2 is blinking (1:1 at high speed), communication is at a hault because of an alarm.",
                      "None robot running Normal.",
                    ),
                    //TODO add pic of ALM LED's PG 96
//                    PictureContainer('images/LED17.jpg'),
                    TextSectionESLEDStyle(
                      "ALM 1/ ALM 2 (Red)",
                      "1. If the ALM1 or ALM2 state is (steady on), hardware may be defective.",
                      "1. Check the cable between the main board and the E-stop board, replace if needed.\n2. Replace the E-stop board.\n3. Replace the Main board.",
                      "2. If the ALM1 or ALM2 state is blink (1:1), the communication between the E-stop board and a unit connected to I/O link i(E-stop unit) to the E-stop unit is stopped, or there may be noise around the cable.",
                      "1. 1. Check the communication cable between the E-stop unit and a unit connected to I/O link i(E-stop unit). Replace if needed.\n2. Replace the unit connected to I/O link i(E-stop unit).\n3. Replace the E-stop board.",
                      "3. If the ALM1 or ALM2 state is blink (3:1), a unit connected to I/O link i(E-stop unit) may have power failure.",
                      "1. Check fuse on a unit connected to I/O link i(E-stop unit) to the E-stop unit, and replace if it has blown.\n2. Replace the unit connected to I/O link i(E-stop unit).\n3. Replace the E-stop board.",
                    ),
                  ],
                ),
              ),
            )));
  }
}
