import 'package:flutter/material.dart';
import 'package:faultcodes/LED_troubleshooting_list_E_stop_board.dart';
import 'package:faultcodes/LED_troubleshooting_list_Mainboard.dart';
import 'package:faultcodes/LED_troubleshooting_list_Power_Supply.dart';
import 'package:faultcodes/LED_troubleshooting_list_Process_io.dart';
import 'package:faultcodes/LED_troubleshooting_list_Servo_Amp.dart';
import 'package:faultcodes/tips_LED_menu.dart';
import 'package:faultcodes/tips_second_menu.dart';

class LedButton extends StatelessWidget {
  final Color _color;
  final String _text;

  LedButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => MainBoardLED()),
            );
          }),
    );
  }
}

class LedMenuButton extends StatelessWidget {
  final Color _color;
  final String _text;

  LedMenuButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => TipsLED()),
            );
          }),
    );
  }
}

class LedESTOPButton extends StatelessWidget {
  final Color _color;
  final String _text;

  LedESTOPButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => ESTOPLED()),
            );
          }),
    );
  }
}

class LedPSButton extends StatelessWidget {
  final Color _color;
  final String _text;

  LedPSButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => PowerSupplyLED()),
            );
          }),
    );
  }
}

class TroubleshootingButton extends StatelessWidget {
  final Color _color;
  final String _text;

  TroubleshootingButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => Tips()),
            );
          }),
    );
  }
}

class ProcessLEDButton extends StatelessWidget {
  final Color _color;
  final String _text;

  ProcessLEDButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => ProcessIOLED()),
            );
          }),
    );
  }
}

class ServoLEDButton extends StatelessWidget {
  final Color _color;
  final String _text;

  ServoLEDButton(this._color, this._text);

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
              MaterialPageRoute(builder: (context) => ServoAmpLED()),
            );
          }),
    );
  }
}
