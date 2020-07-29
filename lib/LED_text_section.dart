import 'package:flutter/material.dart';

class TextSectionLEDStyle extends StatelessWidget {
  final String _step;
  final String _action;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionLEDStyle(this._step, this._action);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _step,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900]),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Action",
              style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _action,
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}
