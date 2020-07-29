import 'package:flutter/material.dart';
import 'package:faultcodes/picture_container.dart';
import 'package:faultcodes/text_section_styles.dart';

class Fuse extends StatelessWidget {
  //final String _text;

  //Fuse(this._text);

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
            "Fuse Based",
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/experiment.jpg'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PictureContainer('images/PowerSupply_Fuses.jpg'),
              TextSectionFuseStyle3(
                  "POWER SUPPLY",
                  "F1",
                  "Fuse for AC input (8 amp).",
                  "The LED (PIL: Green) of the power supply unit does not light, and the power cannot be truned on.",
                  "1. Check the unit's fans, printed circuit board and cables connected to the CP2 & CP3 connectors of the power supply unit to see if there is any short circuit.\n2. Replace the power supply.",
                  "F3",
                  "Fuse for +24E (7.5 amp).",
                  "The teach pendent displays \"SRVO-217 E-STOP board not found\" or \"PRIO-091 E-STOP PCB comm. error\".\n \nNOTE Same as E-stop board F1 fault.",
                  "1. Check F1 on E-stop board.\n2. Check the printed circuit boards, units, and cables using +24E according to the power supply diagram. Replace if needed.\n3. Replace the power supply.",
                  "F4",
                  "Fuse for +24V (7.5 amp).",
                  "The power when turned on, is immediately turned off. At this time, the LED (ALM: Red) lights.",
                  "1. Check the print"
                      "ed circuit boards, units, servo amp and cables using the +24V according to the power supply diagram. Replace if needed. The LED of ALM is turned off by pressing the OFF button once.\n2.  Replace the power supply."),
              PictureContainer('images/Mainboard_Fuses.jpg'),
              TextSectionFuseStyle1(
                  "MAIN BOARD",
                  "FU1 (.5 amp)",
                  "For protecting the +24E output for vison.",
                  "+24E used for vison is not a output.",
                  "1. Check +24E used by the vison for a ground fault.\n2. Check the cables connecting to the vison camera and the related parts for an abnormaility.\n3.  Replace the main board."),
              PictureContainer('images/Servo_Fuses.jpg'),
              TextSectionFuseStyle3(
                "SERVO AMP",
                "FS1 (3.2 Amp)",
                "For generation  the power ampilifier control circuit.",
                "All LEDs on the servo amp go out. The FSSB disconnection or initialization alarm is displayed on the teach pendent.",
                "1. Replace the servo amp.",
                "FS2 (3.2 Amp)",
                "For protection of the 24V output to the end effector, XROT, and XHBK.",
                "The 6 channel amp. fuse blown (SRVO-214), Hand broken(SRVO-006), and robot overtravel (SRVO-005) are displayed on the teach pendent.",
                "1. Check +24VF used by the end effector for a ground fault.\n2. Check the robot connection cable and the robot's internal cable and end effector.\n3. Replace the servo amp.",
                "FS3 (3.2 Amp)",
                "For protection of the 24V output to the regenerative resistor.",
                "The 6 channel amp. fuse blown (SRVO-214), DCAL alarm(SRVO-043) are displayed on the teach pendent.",
                "1. Check the regenerative resistor, and replace if needed.\n2. Replace the servo amp.",
              ),
              PictureContainer('images/Estop_Fuses.jpg'),
              TextSectionFuseStyle4(
                  "E-Stop board",
                  "FUSE1 (1 Amp)",
                  "For internal power supply circuit.",
                  "The teach pendant displays \"Servo- 217 E-stop board not found\" or \"PRIO-091 E-STOP PCB comm. error\".\n \nNOTE Same as Power Supply F3 fault.",
                  "1. Check F3 on power supply unit.\n2. Check the cables between the E-stop board and the main board. Replace if needed.\n3. Replace the E-stop board\n4.Replace the main board.",
                  "FUSE2 (1 Amp)",
                  "For +24EXT line (E-stop line) protection.",
                  "The teach pendant displays \"Servo- 213 E-stop board FUSE2 blown\".",
                  "1. If an alarm is issued when the fuse has not blown, check the voltage of EXT24V and EXT0V(TBOP14 for A- cabinet or TBOP10 for B- cabinet). If EXT24V or INT0V is not used, check the jumper pin between EXT24V and INT24V or between EXT0V and INT0V.\n2. If the FENCE, SVOFF, and EXEMG are used, these signals may be connected to 0v or ground. Check these cables.\n3. Replace the operator's panel cable(CRT27).\n4. Replace the E-stop board\n5. Replace the teach pendant cable.\n6. Replace the teach pendant.",
                  "FUSE3 (1 Amp)",
                  "For teach pendent power supply circuit.",
                  "THe display on the teach pendant dissapears.",
                  "1. Check the teach pendent cable and replace if needed.\n2. Check the teach pendent and replace if needed.\n3. Replace the E-stop board.",
                  "FUSE4 (1 Amp)",
                  "For SFDI protection (B-cabinet only).",
                  "The teach pendant displays \"Servo- 348 DCS MCC OFF\".",
                  "1. Check the SFDI cable connections, and replace if needed.\n2. Check the operator's panel cable(CRT27) and replace if needed.\n3. Replace the E-stop board."),
              PictureContainer('images/Process_I_O_board_JA_JB.jpg'),
              TextSectionFuseStyle1(
                  "PROCESS I/O BOARD JA,JB",
                  "FUSE1 (1 amp)",
                  "For +24E.",
                  "The LED (ALM-2 or FALM) on the process I/O board lights, and an alarm such as IMSTP input is output on the teach pendent. (The display data depends on the state of peripheral equipment connection.)",
                  "1. Check if the cables and peripheral equipment connected to the process I/O board is normal.\n2. Replace the process I/O board."),
              PictureContainer('images/Process_I_O_board_MA.jpg'),
              Text(
                "MA",
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              PictureContainer('images/Process_I_O_board_MB.jpg'),
              Text(
                "MB",
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              TextSectionFuseStyle1(
                  "PROCESS I/O BOARD MA,MB",
                  "FUSE1 (1 amp)",
                  "For +24E.",
                  "The LED (ALM-2 or FALM) on the process I/O board lights.",
                  "1. Check if the cables and peripheral devices connected to the process I/O board is normal.\n2. Replace the process I/O board."),
              PictureContainer('images/Sensor_I_F_Unit.jpg'),
              TextSectionFuseStyle1(
                  "SENSOR I/F UNIT FOR CR-35-iA",
                  "FUSE (2 amp)",
                  "For internal power supply circuit.",
                  "The LED of the sensor I/F lights.",
                  "1. Check if the cables and peripheral devices connected to the sensor I/F unit is normal.\n2. Replace the sensor I/F unit."),
            ],
          ),
        ),
      ),
    ));
  }
}

class FuseButton extends StatelessWidget {
  final Color _color;
  final String _text;

  FuseButton(this._color, this._text);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: 300.0,
      height: 80.0,
      child: new RaisedButton(
          color: _color,
          child: new Text(
            _text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Fuse()),
            );
          }),
    );
  }
}
