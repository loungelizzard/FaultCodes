import 'package:flutter/material.dart';
import 'package:faultcodes/text_section_styles.dart';

class Servo extends StatelessWidget {
  //final String _text;

  //Servo(this._text);

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
            "SERVO",
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/sky_night.jpg'),
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
              TextSectionServoStyle(
                  "Servo-003",
                  "Deadman Switch Released",
                  "The Teach pendent is enabled but, the deadman switch is not pressed.",
                  "1. Check the position of the deadman switch\n2. Check the mode switch on the operator's panel and the enable/disable switch on the teach pendent are at the correct positions.\n3. Replace Teach pendant.\n4. Check the mode switch connection and operation. Replace if needed.\n5. Replace the E-stop board."),
              TextSectionServoStyle(
                  "Servo-004",
                  "Fence Open",
                  "In the auto operation mode, the safety fence contact connected to EAS1-EAS11 or EAS2-EAS21 of TBOP13(A cabinet) TBOP11(B cabinet) is open.\n \n NOTE If this fault is issued together with SRVO-213, a fuse may have blown. Take the same actions as for SRVO-213.",
                  "1. Check for open gate\n2. Check the cables and switches connected between EAS1 and EAS11 and between EAS2 and EAS21 of the terminal block TBOP13(A cabinet) TBOP11(B cabinet) on the E-stop board.\n3. Check the mode switch, replace if needed.\n4. Replace the E-stop board."),
              TextSectionServoStyle(
                  "Servo-005",
                  "Robot Overtravel",
                  "The robot has moved beyond a hardware limit switch on the axes.\n \n NOTE If this fault is issued together with SRVO-214, the fuse has blown. Check Servo amp FS2 Fault",
                  "1.\n 1) Select [System OT release] on the overtravel release screen to release each robot axis from the overtravel state.\n 2) Hold down the shift key, and press the alarm release button to reset the alarm.\n 3) Still holding the shift key, jog robot to bring into a movable range.\n2. Replace the limit switch.\n3. Check the FS2 fuse on the servo amplifier.\n4. Check the EE connector.\n5. Replace the servo amplifier.\n6. Check the connector RPI at the base of the robot:\n 1) Check for bent or dislocated pins in the male and female connectors.\n 2) Check for tight connections. Then verify that connectors CRF8 and CRM68 on the servo amplifier are securely connected. Also check condition of robot connection cable RMP1 for damage. Check the internal cable of the robot for a short circuit or connection to ground."),
              TextSectionServoStyle(
                  "Servo-006",
                  "Hand Broken",
                  "THe safety joint (if used) might have broken. Or the HBK signal on the robot connection cable might be a ground fault or cable disconnected.\n \n NOTE if hand broken signal is not in use it can be disabled by software settings. Check Servo amp FS2 Fault",
                  "1. Hold down the shift key, and press the alarm release button to reset the alarm. Still holding the shift key, jog robot to bring into the work area.\n 1) Replace the hand broken device.\n 2)Check the hand broken cable.\n2. Replace the servo amplifier.\n3. Check the connector RPI at the base of the robot:\n 1) Check for bent or dislocated pins in the male and female connectors.\n 2) Check for tight connections. Then verify that connectors CRF8 and CRM68 on the servo amplifier are securely connected. Also check condition of robot connection cable RMP1 for damage. Check the internal cable of the robot for a short circuit or connection to ground."),
              TextSectionServoStyle(
                  "Servo-007",
                  "External E-stop",
                  "On the terminal block TBOP13(A cabinet) TBOP11(B cabinet) on the E-stop board, no connection of external E-stop is made between EES1 and EES11, EES2 and EES21.\n \n NOTE If this fault is issued together with SRVO-213, a fuse may have blown. Take the same actions as for SRVO-213.",
                  "1. If an external E-stop switch is connected, release the switch.\n2. Check the cables and switches connected between EAS1 and EAS11 and between EAS2 and EAS21 of the terminal block TBOP13(A cabinet) TBOP11(B cabinet) on the E-stop board.\n3. When the signal is not used, make a connection between EAS1 and EAS11 and between EAS2 and EAS21.\n4. Replace the E-stop board."),
              TextSectionServoStyle(
                  "Servo-009",
                  "Pneumatic Pressure Alarm",
                  "Abnormal air pressure was detected. The input signal is located on the EE interface of the robot.",
                  "1. Check the EE connector.\n2. Check the robot connection cable (RPI) and the mechanical unit cable of the robot for a ground fault or a disconnection. Reconnect or replace if needed.\n3. Replace the servo amplifier.\n4. Replace the internal cables of the robot."),
              TextSectionServoStyle(
                  "Servo-014",
                  "Fan Motor Abnormal (number)",
                  "When the fan motor stops on the backplane, the TP shows the following message. 1 min after the alarm, the robot stops and can't be operated from the TP. The robot can be recovered by replacing the fan motor. The number in the bracket indicates which fan.\n(1) Fan above the slot 1,\n(2) fan above slot 2\n(3) both fans.",
                  "1. Check the fan motor and its cables. Replace if needed.\n 2. Replace the backplane.\n 3. Preform a complete controller backup to save all your programs and settings, then replace the main board."),
              TextSectionServoStyle(
                  "Servo-015",
                  "System Overheat",
                  "The temp in the controller exceeds the specific value. In 1 min from occurring, robot stops and can't be operated from the teach pendent.\n \n NOTE The controller will stop working 1 min after alarm occures.",
                  "1. If the ambient temp is higher than (45 degrees C), cool down the temp.\n2. If the fan motor is not runnings, check it and its' cables. Replace if needed.\n3. Preform a complete controller backup to save all your programs and settings, then replace the main board."),
              TextSectionServoStyle(
                  "Servo-018",
                  "Brake Abnormal (Group: i Axis: j)",
                  "An excessive brake current is detected. The ALM LED on the servo amplifier is lit.\n \n NOTE This error can be caused by the optional brake release unit if the on/off switch is left in the on position while the operator tries to jog the robot. To recover, turn the break release unit off and cycle power to the controller.",
                  "1. Check the robot connection cable (RMI,RMP) and the internal cable of the robot and motor brakes connected to CRR88 connector on the servo amplifier.\n2. Check the cables and motor brakes connected to CRR65A, CRR65B connector on the servo amplifier. If a short or open is found replace the failed part.\n3. Replace the servo amplifier."),
              TextSectionServoStyle(
                  "Servo-021",
                  "SRDY Off (Group: i Axis: j)",
                  "The HRDY is on and the SRDY is off, although there is no other cause of an alarm. (HRDY is a signal with which the host detects the servo system whether to turn on or off the servo amplifier magnetic contactor. SRDY is a signal with which the servo system informs the host whether the magnetic contactor is turned on.) If the servo amp magnetic contactor can't be turned on when directed so, it is most likely that a servo amp alarm has occured. If a servo amp alarm has been detected, the host will not issue this alarm (SRDY off). Therefore, this alarm indicates that the magnetic contactor can't be turned on for unknown reasons. ",
                  "1. Make sure the E-stop board connectors CRRA8(A-cabinet) or CP2A(B-cabinet), CRMA92, CNMC5(A-cabinet), or CNMC7(B-cabinet) and CRMA91(6-axis amplifier) are securely attached to the servo amp. In case using aux. axis amplifier, make sure that the connectors CXA2A(6-axis amplifier) or CXA2B(aux. axis amplifier) are securely attached to the servo amp.\n2. It is possible that a momentary power loss occured due to intermittent connection. Check related cables.\n3. Replace the E-stop unit.\n4. Replace the servo amp.  "),
              TextSectionServoStyle(
                  "Servo-022",
                  "SRDY On (Group: i Axis: j)",
                  "When the HRDY is about to go on, the SRDY is already on. (HRDY is a signal with which the host detects the servo system whether to turn on or off the servo amplifier magnetic contactor.  SRDY is a signal with which the servo system informs the host whether the magnetic contactor is turned on.)",
                  "1. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-023",
                  "Stop Error Axis (Group: i Axis: j)",
                  "When the servo is at a stop, the position error is abnormally large. Check whether the brake is released through the clack sound of the brake or vibration.",
                  "If the break is NOT released\n1. Check the continuity of the brake line in the robot connection cable and the mechanical unit cable.\n2. If a disconnected cable is not found replace the servo amp or the servo motor.\n\nIf the break is released\n1. Check for obstacles stopping robot motion.\n2. Make sure the connectors CNJ1A-CNJ6 are securely attached to the servo amp.\n3. Check the continuity of the robot connection cable and the internal robot power cable.\n4. Check if the payload is greater than the rating. If greater reduce it to within the rating.(If the load is too great, the tourque required becomes higher than the capacity of the motor.\n5. Check that the input voltage to the controller is within the rated voltage and no phase is missing. And check that the setting of the transformer is correct. Check each phase of the voltage supplying the CRR38A or CRR38B connector of the 3 phase power (200 VAC) input to the servo amp. If it is 210 VAC or lower, check the line voltage. (If the voltage input to the servo amp becomes low, the tourque output also becomes low.\n6. Replace the servo amp.\n7. Replace the motor of the alarm axis."),
              TextSectionServoStyle(
                  "Servo-024",
                  "Move Error Axis (Group: i Axis: j)",
                  "When the robot is running, its position error is greater than a specified value (\$PARAM_GROUP.\$MOVER_OFFST). It is likely the robot cannot follow the speed specified by the program.",
                  "1. Take same action as Servo-023."),
              TextSectionServoStyle(
                  "Servo-027",
                  "Robot Not Mastered (Group: i)",
                  "An attempt to calibrate the robot, but mastering has not been completed.",
                  "1. Check if the mastering is valid, if not master the robot."),
              TextSectionServoStyle(
                  "Servo-030",
                  "Brake On Hold (Group: i)",
                  "If the temporary halt alarm function is enabled (\$SCR.\$BRKHOLD ENB=1), this fault will occur. When not used disable the setting",
                  "1. Disable [Servo-off in temporary hault] on the general setting screen [6 General Setting Items]."),
              TextSectionServoStyle(
                  "Servo-033",
                  "Robot Not Calibrated (Group: i)",
                  "An attempt was made to set up a reference point for quick mastering, but the robot had not been calibrated.",
                  "1. Calibrate the robot.\n 1) Supply power.\n 2)Set up quick mastering reference point using [Postioning] on the System Master/Cal menu."),
              TextSectionServoStyle(
                  "Servo-034",
                  "Ref Pos Not Set (Group: i)",
                  "An attempt was made to preform quick mastering, but the robot had not been calibrated.",
                  "1. Set up quick mastering reference point using [Postioning] on the System Master/Cal menu."),
              TextSectionServoStyle(
                  "Servo-036",
                  "Inpos Time Over (Group: i Axis: j)",
                  "The robot did not get to the effective area (\$PARAM_GROUP.\$ STOPTOL) even after the postion check monitoring time (\$PARAM_GROUP.\$INPOS_TIME) elapsed.",
                  "1. Take the same action as Servo-023 (Large position error at stop)."),
              TextSectionServoStyle(
                  "Servo-037",
                  "IMSTP Input (Group: i)",
                  "The IMSTP signal for a peripheral device interface was input.",
                  "1. Turn on the IMSTP signal."),
              TextSectionServoStyle(
                  "Servo-038",
                  "Pulse Mismatch",
                  "The pulse count obtained when power is shut off does not match the pulse count obtained when power is applied. This alarm alarm is asserted after replacing the Pulsecoder, or after replacing the battery used to backup Pulsecoder data, or after loading backup data to the mainboard.",
                  "1. If the brake number is set to non brake motors, this alarm may occur. Check the software settings of the brake number.\n2. In case the robot has been moved by using the brake release unitwhile the power is off or when restoring the backup data to the main board, this alarm may occur. remaster the robot.\n3. If the robot moved because the brake failed, check cause of brake failure then remaster the robot.\n4. Replace the Pulsecoder and remaster the robot."),
              TextSectionServoStyle(
                  "Servo-043",
                  "DCAL alarm (Group: i Axis: j)",
                  "The regenerative discharge energy was too high to be dissipated as heat. (To run the robot, the servo amp supplies energy to the robot. When going down the vertical axis, the robot operates from the potential energy. If a reduction in the potential energy is higher than the energy needed for acceleration, the servo amp receives energy from the motor. A similar phenomenon occurs even when no gravity is applied, for example at deceleration on a horizontal axis. The energy that the servo amp recieves from the motor is called regenerative energy. The servo amp dissipates this energy as heat. If the regenerative energy is higher than the energy dissipated as heat, the difference is stored in the servo amp, causing an alarm.\n \n NOTE Alarm displays discharge resistor number(Axis: j), not axis number. Check SERVO AMP FS3 Fault",
                  "1. This alarm may occur if the axis is subjected to frequent acceleration/deceleration or if the axis is vertical and generates a large amount of regenerative energy.\n2. Check fuse FS3 in the servo amp. Replace if needed. One of the probable causes of a blown fuse is a ground fault in the servo amp for the auxiliary axis.\n3. The ambient temperature is excessively high. Or the regenerative resister can't be cooled effectively. Check the external fan unit, replace if stopped. Clean the fan, regenerative resistor and the louver if dirty.\n4. Make sure that the servo amp CRR63A and CRR63B connectors are tight. Then disconnect the servo amp CRR63A and CRR63B connectors and check for continuity between pins 1 & 2 of the cable end connector. If no continuity replace the regenerative resistor.\n5. Make sure that the servo amp CRRA11A and CRRA11B connectors are tight. Then disconnect the cables from CRRA11A and CRRA11B on the servo amp and check the resistance between pins 1 & 3 of each cable end connector. If the resistance is not 6.5 ohms, replace the regerative resistor. CRRA11B may not be used depending on the model.\n6. Replace the servo ampifier."),
              TextSectionServoStyle(
                  "Servo-044",
                  "DCHVAL%S Alarm (Group: i Axis: j)",
                  "The DC link voltage of the main circuit power supply is abnormally high.",
                  "1. Check that the input voltage to the controller is within the rated voltage. And check that the settings of the transformer are correct.\n2. Check the 3 phase input voltage at the servo amp. If it is 240VAC or higher check the line voltage.\n3. Check that the load weight is within range. Lower if needed (If the machine load is higher higher than the rating, the accumulation of regenerative energy might result in the HVAL alarm even when the 3 phase input voltage is within the rating.)\n4. Make sure that the servo amp CRRA11A and CRRA11B connectors are tight. Then disconnect the cables from CRRA11A and CRRA11B on the servo amp and check the resistance between pins 1 & 3 of each cable end connector. If the resistance is not 6.5 ohms, replace the regerative resistor. CRRA11B may not be used depending on the model.\n5. Replace the servo amp.\n6. Replace the power supply."),
              TextSectionServoStyle(
                  "Servo-045",
                  "DHCAL Alarm (Group: i Axis: j)",
                  "Abnormally high current was detected in the main circuit of the servo amp.",
                  "1. Turn off the power, and disconnect the power cable from the servo amp. and disconnect the brake cable (CRR88 on the servo amp) to avoid the axis falling unexpectedly. Supply power and see if the alarm clears. If alarm is still there replace the servo amp.\n2. Turn off the power, and disconnect the power cable from the servo amp and check the insulation by measuring between U, V, or W and the GND line. Replace the power cable if there's a short.\n3. Turn off the power, and disconnect the power cable from the servo amp and measure the resistance between U and V, V and W, U and W with an Ohm meter with very low resistance range. If the resistances at the 3 places are different from eachother, either the motor or the power cable is defective. Replace if necessary. "),
              TextSectionServoStyle(
                  "Servo-046",
                  "OVC Alarm (Group: i Axis: j)",
                  "This alarm is issued to prevent the motor from sustaining thermal danger that might occur when the root mean square current, calculated within the servo system, is out of the allowable range.",
                  "1. Check the operating condition for the robot and relax the service condition if possible. If the load or operating has exceeded the rating, reduce the load or relax the service condition to meet the rating.\n2. Check whether the voltage input to the controller is within the rated voltage and also check whether the voltage set for the transformer of the controller is correct.\n3.Check whether the brake of the corresponding axis is released.\n4. Check whether there is a factor that has increased the mechanical load on the coreresponding axis.\n5.Replace the servo amp.\n6.Replace the motor of the corresponding axis.\n7. Replace the E-stop unit.\n8. Replace the motor powerline (robot connection cable) of the corresponding axis.\n9. Replace the motor powerline and brake line (internal cable of the robot) of the corresponding axis."),
              TextSectionServoStyle(
                  "Servo-047",
                  "LVAL Alarm (Group: i Axis: j)",
                  "The control power supply voltage (+5V, etc) supplied from the power supply circuit in the servo amp is abnormally low.",
                  "1. Replace the servo amp.\n2. Replace the power supply unit."),
              TextSectionServoStyle(
                  "Servo-049",
                  "OHAL1 Alarm (Group: i Axis: j)",
                  "The thermostat in the transformer activated.",
                  "1. Check if the fan stopped, and alos whether the vent is clogged. Clean or replace if needed.\n2. If the robot's operating condition is severe, relax the condition if possible.\n3. Check that a connection is made between transformer connector CPOH and the servo amp CRMA91.\n4. Check whether no phase occurs.\n5. Replace E-stop unit.\n6. Replace servo amp.\n7. Replace transformer."),
              TextSectionServoStyle(
                  "Servo-050",
                  "Collision Detect Alarm (Group: i Axis: j)",
                  "The disturbance torque estimated by the servo software is abnormally high.(A collision has been detected.)",
                  "1. Check for a collision or if there is a factor that has incresed the mechanical load on the corresponding axis.\n2. Check if the load settings are valid.\n3. Check whether the brake of the corresponding axis is released.\n4. If the load has exceeded the rating, reduce the load to meet the rating.\n5. Check whether the voltage input to the controller is within the rated voltage and also check whether the voltage set for the transformer of the controller is correct.\n6. Replace servo amp.\n7. Replace the motor of the coressponding axis.\n8. Replace E-stop unit.\n9. Replace the motor powerline (robot connection cable) of the corresponding axis.\n10. Replace the motor powerline and brake line (internal cable of the robot) of the corresponding axis."),
              TextSectionServoStyle(
                  "Servo-051",
                  "CUER Alarm (Group: i Axis: j)",
                  "The offset of the current feedback value is abnormally high.",
                  "1. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-055",
                  "FSSB Com Error 1 (Group: i Axis: j)",
                  "A communication error has occured between the main board and servo amp.",
                  "1. Check the optical fiber cable between the axis control card on the main board and the servo amp. Replace if needed.\n2. Replace the axis control card on the main board.\n3. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-056",
                  "FSSB Com Error 2 (Group: i Axis: j)",
                  "A communication error has occured between the main board and servo amp.",
                  "1. Check the optical fiber cable between the axis control card on the main board and the servo amp. Replace if needed.\n2. Replace the axis control card on the main board.\n3. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-057",
                  "FSSB Disconnect (Group: i Axis: j)",
                  "Communication was interrupted between the main board and servo amp.",
                  "1. Check whether fuse(F4) in the power supply unit has blown. Replace if needed.\n2. Check whether fuse(FS1) in the servo amp has blown. If blown replace the servo amp.\n3.  Check the optical fiber cable between the axis control card on the main board and the servo amp. Replace if needed.\n4. Replace the axis control card on the main board.\n5. Replace the servo amp.\n6. Check the robot connection cable (RP1) is in good condition. Check the internal cable of the robot (Pulsecoder cable) for a short circuit or connection to ground.\n7. Preform a complete controller backup to save all your programs and settings, then replace the main board."),
              TextSectionServoStyle(
                  "Servo-058",
                  "FSSB Init Error (yy)",
                  "Communication was interrupted between the main board and servo amp.",
                  "1. Check whether fuse(F4) in the power supply unit has blown. Replace if needed.\n2. Check whether fuse(FS1) in the servo amp has blown. If blown replace the servo amp.\n3. Turn of the power and disconnect the CRF8 connector on the servo amp. Then check whether this alarm occurs again. (Ignore alarm SRVO-068 during this.) If the alarm goes away the robot connection (RP1) or the internal cable of the robot (Pulsecoder cable) may be short circuited to ground. Check the cables and replace if necessary.\n4. Check whether the LED (P5V and P3.3V) on the servo amp is lit. If they are not lit, the DC power is not suppied to the servo amp. Make sure the connector CP5 on the power supply unit and the connector CXA2B on the servo amp are connected tightly. If they are replace the servo amp.\n5. Check the optical fiber cable between the axis control card on the main board and the servo amp. Replace if needed.\n6. Replace the axis control card on the main board.\n7. Replace the servo amp.\n8. If the other units (the servo amp for auxiliary axis and the line tracking board) are connected in the FSSB optical communication, disconnect these units and connect only the servo amp for the robot. THen turn power on. If the alarm goes away, search the failed unit and replace.\n9. Preform a complete controller backup to save all your programs and settings, then replace the main board."),
              TextSectionServoStyle(
                  "Servo-059",
                  "Servo Amp Init Error",
                  "Servo amp initialization failed.",
                  "1. Check the optical fiber cable between the axis control card on the main board and the servo amp. Replace if needed.\n2. Turn of the power and disconnect the CRF8 connector on the servo amp. Then check whether this alarm occurs again. (Ignore alarm SRVO-068 during this.) If the alarm goes away the robot connection (RP1) or the internal cable of the robot (Pulsecoder cable) may be short circuited to ground. Check the cables and replace if necessary.\n3. Check whether the LED (P5V and P3.3V) on the servo amp is lit. If they are not lit, the DC power is not suppied to the servo amp. Make sure the connector CP5 on the power supply unit and the connector CXA2B on the servo amp are connected tightly. If they are replace the servo amp.\n4. Replace the servo amp.\n5. Replace the line tracking board (if installed).\n6. Replace the pulsecoder."),
              TextSectionServoStyle(
                  "Servo-062",
                  "BZAL Alarm (Group: i Axis: j)",
                  "This alarm occurs if the battery voltage for Pulsecoder absolute position backup cannot be detected. Probable cause is a broken battery cable or no batteries in the robot.\n \n NOTE after correcting this alarm, set the system variable (\$MCR.\$SPC_RESET) to true, cycle power and remaster.",
                  "1. Replace the batteries in the base of the robot.\n2. Replace the pulsecoder in question.\n3. Check whether the mecanical unit cable for feeding power from the battery to the pulsecoder is disconnected or grounded. If an abnormailty is found, replace the cable."),
              TextSectionServoStyle(
                  "Servo-064",
                  "PHAL Alarm (Group: i Axis: j)",
                  "This alarm occurs if the phase of the pulses generated in the pulsecoder is abnormal.\n \n NOTE this alarm could accompany DTERR,CRCERR, or STBERR alarm. In this case this might be a false fault.",
                  "1. Replace the pulsecoder in question."),
              TextSectionServoStyle(
                  "Servo-065",
                  "BLAL Alarm (Group: i Axis: j)",
                  "The battery voltage for the pulsecoder is lower than the rating.",
                  "1. Replace the battery"),
              TextSectionServoStyle(
                  "Servo-067",
                  "OHAL2 Alarm (Group: i Axis: j)",
                  "The temperature inside the pulsecoder or motor is abnormally high, and the buit in thermostat has operated.",
                  "1. Check the robot operating conditions. If the duty cycle or load weight has exceeded the rating, reduce the robot load to meet the rating.\n2. When the power has been supplied to the motor after if has cooled, and fault still occurs, replace the motor."),
              TextSectionServoStyle(
                  "Servo-068",
                  "DTERR Alarm (Group: i Axis: j)",
                  "The serial pulsecoder does not return serial data in response to a request signal.",
                  "1. Check the robot connection cable (RPI) connector (CRF8) of the servo amp. and the connector (motor side) are connected tightly.\n2. Check that the shielding of the robot connection cable (RP1) is grounded securely in the cabinet.\n3. Replace the pulsecoder.\n 4. Replace the servo amp.\n5. Replace the robot connection cable(RMI,RPI).\n6. Replace the internal cable of the robot (pulsecoder, motor cable)."),
              TextSectionServoStyle(
                  "Servo-069",
                  "CRCERR Alarm (Group: i Axis: j)",
                  "The serial data has disturbed during communication.",
                  "See SRVO-068"),
              TextSectionServoStyle(
                  "Servo-070",
                  "STBERR Alarm (Group: i Axis: j)",
                  "The start and stop bits of the serial data are abnormal.",
                  "See SRVO-068"),
              TextSectionServoStyle(
                  "Servo-071",
                  "SPHAL Alarm (Group: i Axis: j)",
                  "The feedback speed is abnormally high.\n \nNOTE if this occurs with PHAL alarm (SRVO-064) this is a false fault.",
                  "See SRVO-068"),
              TextSectionServoStyle(
                  "Servo-072",
                  "PMAL Alarm (Group: i Axis: j)",
                  "It is likely the pulsecoder is abnormal.",
                  "1. Replace the pulsecoder and remaster."),
              TextSectionServoStyle(
                  "Servo-073",
                  "CMAL Alarm (Group: i Axis: j)",
                  "It is likely the pulsecoder is abnormal or the Pulsecoder has malfunctioned due to noise.",
                  "1. Check whether the connection of the controoler earth is good. Check the earth cable connection between controller and robot connection cables are connected securely to the grounding plate.\n2. Reinforce the earth of the motor flange. (In case of Auxiliary axis)\n3. Reset the Pulsecoder.\n4. Replace the Pulsecoder.\n5. Replace the robot connection cable (RMI,RP1).\n6. Replace the internal cable of the robot (for the PUlsecoder, motor cable)."),
              TextSectionServoStyle(
                  "Servo-074",
                  "LDAL Alarm (Group: i Axis: j)",
                  "The LED in the pulsecoder is broken",
                  "1. Replace the pulsecoder and remaster the robot."),
              TextSectionServoStyle(
                  "Servo-075",
                  "Pulse Not Established\n     (Group: i Axis: j)",
                  "The absolute position of the pulsecoder cannot be established.",
                  "1. Reset the alarm and jog the robot on axis referenced 15-20 degrees."),
              TextSectionServoStyle(
                  "Servo-076",
                  "Tip Stick Detection (Group: i Axis: j)",
                  "An excessive disturbance was assumed in servo software at the start of operation. (An abnormal load was detected. The cause may be welding.)",
                  "1. Check whether the robot has collided. Or check if the machinery load of the corresponding axis has increased.\n2. Check if the load settings are valid.\n3. Check if the brake of the corresponding axis is released.\n4. Check if the load weight is within the rated range. decrease if needed.\n5. Check if the voltage input to the controller is within the rated voltage and also check if the voltage set to the transformer controller is correct.\n6. Replace the servo amp.\n7. Replace the corresponding servo motor.\n8. Replace the E-stop unit.\n9. Replace the power cable of the robot connection cable in which the corresponding axis is connected.\n10. Replace the internal cable of the robot (power/brake) in which the corresponding axis is connected."),
              TextSectionServoStyle(
                  "Servo-081",
                  "EROFL Alarm (Group: i Axis: j)",
                  "The pulse counter for line tracking has overflowed.",
                  "1. Check if the condition of the line tracking exceeds the limitations.\n2. Replace the pulse coder.\n3. Replace the line tracking board."),
              TextSectionServoStyle(
                  "Servo-082",
                  "DAL"
                      " Alarm (Group: i Axis: j)",
                  "The line tracking pulsecoder has not been connected.",
                  "1. Check the connection cable at each end (The line tracking board and the motor side).\n2. Check whether the sheilding of the connection cable is connected securely to the grounding plate.\n3.  Replace the line tracking cable\n4. Replace the pulse coder.\n5. Replace the line tracking board."),
              TextSectionServoStyle(
                  "Servo-084",
                  "BZAL Alarm (Group: i Axis: j)",
                  "This alarm occurs if the backup battery for the absolute position of the puslsecoder has not been connected.",
                  "See (SERVO-062)."),
              TextSectionServoStyle(
                  "Servo-087",
                  "BLAL Alarm (Group: i Axis: j)",
                  "This alarm occurs if the voltage of the backup battery for the absolute position of the puslsecoder is low.",
                  "See (SERVO-065)."),
              TextSectionServoStyle(
                  "Servo-089",
                  "OHAL2 Alarm (Group: i Axis: j)",
                  "The motor has overheated.",
                  "When power is supplied to the pulsecoder after it has been sufficiently cool, if the alarm still occurs. See (SRVO-067)."),
              TextSectionServoStyle(
                  "Servo-090",
                  "DTERR Alarm (Track Enc: i)",
                  "Communication between the pulsecoder and line tracking board is abnormal. see (SRVO -068).",
                  "1. Check the connection cable at each end (The line tracking board and the pulsecoder).\n2. Check whether the sheilding of the connection cable is connected securely to the grounding plate.\n3.  Replace the line tracking cable\n4. Replace the pulse coder.\n5. Replace the line tracking board."),
              TextSectionServoStyle(
                  "Servo-091",
                  "CRCERR Alarm (Track Enc: i)",
                  "Communication between the pulsecoder and line tracking board is abnormal.",
                  "Check (SRVO-90)."),
              TextSectionServoStyle(
                  "Servo-092",
                  "STBERR Alarm (Track Enc: i)",
                  "Communication between the pulsecoder and line tracking board is abnormal.",
                  "Check (SRVO-90)."),
              TextSectionServoStyle(
                  "Servo-093",
                  "SPHAL Alarm (Track Enc: i)",
                  "This alarm occurs if the current position data from the pulsecoder is higher than the previous position.",
                  "Check (SRVO-90)."),
              TextSectionServoStyle(
                  "Servo-094",
                  "PMAL Alarm (Track Enc: i)d",
                  "It is likely that the pulscoder is abnormal.",
                  "1. Replace the pulscoder."),
              TextSectionServoStyle(
                  "Servo-095",
                  "CMAL Alarm (Track Enc: i)",
                  "It is likely that the pulscoder is abnormal or the pulsecoder has malufunctioned due to noise. Check (SRVO-73).",
                  "1. Reinforce the earth of the flange of the pulsecoder.\n2. Reset the pusle count.\n3. Replace the pulsecoder."),
              TextSectionServoStyle("Servo-096", "LDAL Alarm (Track Enc: i)",
                  "The LED in the pulsecoder is broken.", "Check (SRVO-74)."),
              TextSectionServoStyle(
                  "Servo-097",
                  " Pulse Not Established (Track Enc: i)",
                  "The absolute position of the pulsecoder can not be established. See (SERVO-75).",
                  "1. Reset the alarm, and jog the axis on which the alarm has occured until the same alarm does not occur again."),
              TextSectionServoStyle(
                  "Servo-105",
                  " Door open or E-stop",
                  "The cabinet door is open. (When the door switch is not mounted skip 1,2 and start from 3).",
                  "1. Close the door.\n2. Check the door switch and door switch connection.\n3.Check that the CRMA92, CRMA94 (A-cabinet), CRMA74 (B-cabinet) connectors on the E-stop board and CRMA91 on the servo amp are connected tightly.\n4. Replace the E-stop board.\n5. Replace the servo amp."),
              TextSectionServoStyle("Servo-123", " Fan Motor rev slow down (i)",
                  "The rotation speed of the fan motor is slowed down.", ""),
              TextSectionServoStyle(
                  "Servo-130",
                  " OHAL1 (PS) alarm (G: i A: j)",
                  "Heat sink temperature of the main circuit of the power supply is abnormally high.",
                  ""),
              TextSectionServoStyle(
                  "Servo-131",
                  " LVAL%s alarm (G: i A: j)",
                  "Control supply voltage in the power supply is abnormally low.",
                  ""),
              TextSectionServoStyle(
                  "Servo-133",
                  " FSAL (PS) alarm (G: i A: j)",
                  "The cooling fan for the control circuit of the power supply stopped.",
                  ""),
              TextSectionServoStyle(
                  "Servo-134",
                  " DCLVAL (PS) alarm (G: i A: j)",
                  "The DC voltage (DC link voltage) of the main circuit power supply for the servo amplifier is abnormally low.",
                  ""),
              TextSectionServoStyle(
                  "Servo-136",
                  " DCLVAL alarm (G: i A: j)",
                  "The DC voltage (DC link voltage) of the main circuit power supply for the servo amplifier is abnormally low.",
                  ""),
              TextSectionServoStyle(
                  "Servo-156",
                  " IPMAL alarm (G: i A: j)",
                  "Abnormally high current flowed through the main circuit of the servo amp.",
                  ""),
              TextSectionServoStyle(
                  "Servo-157",
                  " CHGAL alarm (G: i A: j)",
                  "The capacitor on the servo amp. was not charged properly within the specified time when the servo power is on.",
                  ""),
              TextSectionServoStyle(
                  "Servo-204",
                  " External (SVEMG abnormal) E-stop",
                  "The switch connected across EES1 - EES11 and EES2 - EES21 on the TBOP13 (A- cabinet) or TBOP11 (B- cabinet) on the E-stop board was pressed, but the Estop line was not disconnected.",
                  ""),
              TextSectionServoStyle(
                  "Servo-205",
                  " Fence Open (SVEMG abnormal)",
                  "The switch connected across EES1 - EES11 and EES2 - EES21 on the TBOP13 (A- cabinet) or TBOP11 (B- cabinet) on the E-stop board was pressed, but the Estop line was not disconnected.",
                  ""),
              TextSectionServoStyle(
                  "Servo-206",
                  " Deadman Switch (SVEMG abnormal)",
                  "When the teach pendent was enabled, the deadman switch was released or pressed strongly, but the Estop line was not disconnected.",
                  "1. Replace the teach pendent.\n2. Check the teach pendent cable, replace if needed.\n3. Replace the E-stop board.\n4. When the NTED signal is used, check whether the cabling of the signal connected to the E-stop board is correct.\n5. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-213",
                  " E-stop Board Fuse 2 Blown",
                  "FUSE 2 on the E-stop board has blown, or no voltage is supplied to EXT24V.",
                  "1. Check whether the fuse (FUSE2) on the E-stop board has blown. If it has blown, 24EXT may be shorted to 0EXT. Take action 2. If fuse has not blown take action 3 and up.\n2. Dissconnect the connection destinations of 24EXT that can cause grounding then check that the fuse (FUSE2) does not blow. Disconnect the following on the E-stop board.\n -CRS36\n -CRT27\n - TBOP13(A- cabinet) or TBOP11(B- cabinet)\n If the fuse does not blow in this state, 24EXT and 0EXT may be short circuited at any of the destinations above. Isolate the faulty location then take action. If the fuse does blow even when the connection destinations above are dissconnected, replace the E-stop board.\n3. Check whether 24v is applied to between EXT24V and EXT0V of TBOP14(A- cabinet) or TBOP10(B- cabinet). If not, check the external power supply circuit.\n4. Replace the E-stop board.\n5. Replace the teach pendent cable.\n6. Replace the teach pendent.\n7. Replace the operators panel cable(CRT27)."),
              TextSectionServoStyle(
                  "Servo-214",
                  " 6ch Amplifier Fuse Blown (R: i)",
                  "A fuse (FS2 or FS3) in the servo amp. has blown.",
                  "1. A fuse is blown, eliminate the cause, and replace the fuse.(See fuse based troubleshooting)\n2. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-216",
                  " OVC (Total) (R: i)",
                  "The current (total current for 6 axes) flowing through the motor is too large.",
                  "1. .\n2. .\n3. Replace the servo amp."),
              TextSectionServoStyle(
                  "Servo-217",
                  " E-stop Board Not Found",
                  "The E-stop board is not found when the controller is turned on.",
                  "1. .\n2. .\n3. .\n4. ."),
              TextSectionServoStyle(
                  "Servo-221",
                  " Lack Of DSP (G: i A: j)",
                  "A controlled axis card corresponding to the set number of axes is not mounted.",
                  "1. .\n2. ."),
              TextSectionServoStyle(
                  "Servo-223",
                  " DSP Dry Run (a,b)",
                  "A servo DSP initialization failure occured due to hardware failure or a wrong software setting. Then, the software entered DSP dry run mode. The first number indicates the cause of the failure. The second number is extra information.",
                  "1. .\n2. .\n3. .\n4. .\n5. .\n6. .\n7. ."),
              TextSectionServoStyle("Servo-230", " Chain 1 abnormal a,b",
                  "See SRVO-231", "See SRVO-231"),
              TextSectionServoStyle(
                  "Servo-231",
                  " Chain 2 abnormal a,b",
                  "A mismatch between duplicate safety signals. SRVO-230 is issued if such a mismatch that a contact connected on the chain 1 side (between EES1 and EES11, between EAS1 and EAS11, between EGS1 and EGS11, and so forth) is closed, and a contact on the chain 2 side (between EES2 and EES21, between EAS2 and EAS21, between EGS2 and EGS21, and so forth) is open occurs. If a chain error is detected, correct the cause of the alarm then reset the alarm. Check the alarms issued with this fault to identify which signal the mismatch occured. SRVO-266 through SRVO-275 and SRVO-370 through SRVO-385 are issued at the same time. Take action described for each.",
                  ""),
              TextSectionServoStyle(
                  "Servo-232",
                  " NTED Input",
                  "In the teach mode, the NTED signal connected to the connector (CRMA96) on the E-stop board was placed in the open state.",
                  ""),
              TextSectionServoStyle(
                  "Servo-233",
                  " TP OFF in T1, T2",
                  "Teach pendent is disabled in T1, T2 or the controller door is open.",
                  ""),
              TextSectionServoStyle(
                  "Servo-235",
                  " Short Term Chain Abnormal",
                  "Short term single chain failure condition is detected. Cause of this alarm is half release of deadman switch, or half operation of E-stop switch.",
                  ""),
              TextSectionServoStyle(
                  "Servo-251",
                  " PDB Relay Abnormal (G: i A: j)",
                  "An abnormality was detected in the internal relay (DB relay) of the servo amp.",
                  ""),
              TextSectionServoStyle(
                  "Servo-252",
                  " Current Detect Abnl (G: i A: j)",
                  "An abnormality was detected in the current detection circuit inside of the servo amp.",
                  ""),
              TextSectionServoStyle(
                  "Servo-253",
                  " Amp Internal Over Heat (G: i A: j)",
                  "An overheat was detected inside the servo amp.",
                  ""),
              TextSectionServoStyle("Servo-266", " Fence1 Status Abnormal",
                  "See Servo-266", "See Servo-266"),
              TextSectionServoStyle(
                  "Servo-267",
                  " Fence2 Status Abnormal",
                  "A chain alarm was detected with the EAS (FENCE) signal.",
                  ""),
              TextSectionServoStyle("Servo-268", " SVOFF1 Status Abnormal",
                  "See Servo-269", "See Servo-269"),
              TextSectionServoStyle(
                  "Servo-269",
                  " SVOFF2 Status Abnormal",
                  "A chain alarm was detected with the EGS (SVOFF) signal.",
                  ""),
              TextSectionServoStyle("Servo-270", " EXEMG1 Status Abnormal",
                  "See Servo-271", "See Servo-271"),
              TextSectionServoStyle(
                  "Servo-271",
                  " EXEMG2 Status Abnormal",
                  "A chain alarm was detected with the EES (EXEMG) signal.",
                  ""),
              TextSectionServoStyle("Servo-274", " NTED1 Status Abnormal",
                  "See Servo-275", "See Servo-275"),
              TextSectionServoStyle("Servo-275", " NTED2 Status Abnormal",
                  "A chain alarm was detected with the NTED signal.", ""),
              TextSectionServoStyle(
                  "Servo-277",
                  " Panel E-stop (SVEMG Abnormal)",
                  "The E-stop line was not disconnected although the E-stop button on the operators panel was pressed.",
                  ""),
              TextSectionServoStyle(
                  "Servo-278",
                  " TP E-stop (SVEMG Abnormal)",
                  "The E-stop line was not disconnected although t"
                      "The E-stop button on the teach pendent was pressed.",
                  ""),
              TextSectionServoStyle(
                  "Servo-280", " SVOFF Input", "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-281",
                  " SVOFF Input (SVEMG Abnormal)"
                      "",
                  "Expalanation",
                  ""),
              TextSectionServoStyle("Servo-291", " IPM Over Heat (G: i A: j)",
                  "Expalanation", ""),
              TextSectionServoStyle("Servo-293", " HCAL(PS) Alarm (G: i A: j)",
                  "Expalanation", ""),
              TextSectionServoStyle("Servo-295", " AMP Com Error (G: i A: j)",
                  "Expalanation", ""),
              TextSectionServoStyle("Servo-297",
                  " Improper Input Power (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-300", " Hand Broken/HBK Disabled",
                  "See SRVO-302", "See SRVO-302"),
              TextSectionServoStyle("Servo-302", " Set Hand Broken to Enable",
                  "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-335", " DCS OFFCHK alarm a,b", "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-348", " DCS MCC OFF alarm a,b", "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-349", " DCS MCC ON alarm a,b", "Expalanation", ""),
              TextSectionServoStyle("Servo-370", " SVON1 Status Abnormal",
                  "See SRVO-371", "See SRVO-371"),
              TextSectionServoStyle(
                  "Servo-371", " SVON2 Status Abnormal", "Expalanation", ""),
              TextSectionServoStyle("Servo-372", " OPEMG1 Status Abnormal",
                  "See SRVO-373", "See SRVO-373"),
              TextSectionServoStyle(
                  "Servo-373", " OPEMG2 Status Abnormal", "Expalanation", ""),
              TextSectionServoStyle("Servo-374", " MODE11 Status Abnormal",
                  "See SRVO-377", "See SRVO-377"),
              TextSectionServoStyle("Servo-375", " MODE12 Status Abnormal",
                  "See SRVO-377", "See SRVO-377"),
              TextSectionServoStyle("Servo-376", " MODE21 Status Abnormal",
                  "See SRVO-377", "See SRVO-377"),
              TextSectionServoStyle(
                  "Servo-377", " MODE22 Status Abnormal", "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-378", " SFDIxx Status Abnormal", "Expalanation", ""),
              TextSectionServoStyle("Servo-450",
                  " Drvoff Circuit Fail (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-451",
                  " Internal S-Bus Fail (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-452",
                  " ROM Data Failure (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-453",
                  " Low Voltage Driver (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-454", " CPU BUS Failure (G: i A: j)",
                  "Expalanation", ""),
              TextSectionServoStyle("Servo-455", " CPU Watch Dog (G: i A: j)",
                  "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-456", " Ground Fault (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-457",
                  " Ground Fault(PS) (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-458",
                  " Soft Thermal(PS) (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-459",
                  " Excess Regeneration2%s (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-460",
                  " Illegal Parameter%s (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle("Servo-461",
                  " Hardware Error%s (G: i A: j)", "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-477", " Calibration Data Error", "Expalanation", ""),
              TextSectionServoStyle("Servo-478",
                  " Temperature Difference Too Large", "Expalanation", ""),
              TextSectionServoStyle("Servo-479", " Temperature Change Too Fast",
                  "Expalanation", ""),
              TextSectionServoStyle(
                  "Servo-480", " PForce Alarm %x,%x", "Expalanation", ""),
            ],
          ),
        ),
      ),
    ));
  }
}

class ServoButton extends StatelessWidget {
  final Color _color;
  final String _text;

  ServoButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => Servo()),
            );
          }),
    );
  }
}
