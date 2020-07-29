import 'package:flutter/material.dart';

class TextSectionFuseStyle1 extends StatelessWidget {
  final String _partname;
  final String _name1;
  final String _description1;
  final String _cause1;
  final String _body1;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionFuseStyle1(this._partname, this._name1, this._description1,
      this._cause1, this._body1);

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
              _partname,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionFuseStyle3 extends StatelessWidget {
  final String _partname;
  final String _name1;
  final String _name2;
  final String _name3;
  final String _description1;
  final String _description2;
  final String _description3;
  final String _cause1;
  final String _cause2;
  final String _cause3;
  final String _body1;
  final String _body2;
  final String _body3;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionFuseStyle3(
      this._partname,
      this._name1,
      this._description1,
      this._cause1,
      this._body1,
      this._name2,
      this._description2,
      this._cause2,
      this._body2,
      this._name3,
      this._description3,
      this._cause3,
      this._body3);

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
              _partname,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name2,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name3,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionFuseStyle4 extends StatelessWidget {
  final String _partname;
  final String _name1;
  final String _name2;
  final String _name3;
  final String _name4;
  final String _description1;
  final String _description2;
  final String _description3;
  final String _description4;
  final String _cause1;
  final String _cause2;
  final String _cause3;
  final String _cause4;
  final String _body1;
  final String _body2;
  final String _body3;
  final String _body4;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionFuseStyle4(
      this._partname,
      this._name1,
      this._description1,
      this._cause1,
      this._body1,
      this._name2,
      this._description2,
      this._cause2,
      this._body2,
      this._name3,
      this._description3,
      this._cause3,
      this._body3,
      this._name4,
      this._description4,
      this._cause4,
      this._body4);

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
              _partname,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name2,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name3,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name4,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              _description4,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause4,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body4,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionServoStyle extends StatelessWidget {
  final String _title;
  final String _name;
  final String _cause;
  final String _body;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionServoStyle(this._title, this._name, this._cause, this._body);

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
              _title,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Center(
                child: Text(
              _name,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Cause",
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
              _cause,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Remedy",
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
              _body,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionESTOPStyle extends StatelessWidget {
  final String _description1;
  final String _cause1;
  final String _body1;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionESTOPStyle(this._description1, this._cause1, this._body1);

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
              _description1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionESLEDStyle extends StatelessWidget {
  final String _description1;
  final String _cause1;
  final String _cause2;
  final String _cause3;
  final String _body1;
  final String _body2;
  final String _body3;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionESLEDStyle(this._description1, this._cause1, this._body1,
      this._cause2, this._body2, this._cause3, this._body3);

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
              _description1,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body1,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body2,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, _wPad, _hPad, 4.0),
            child: Text(
              "Symptom",
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
              _cause3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
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
              _body3,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
        ]);
  }
}

class TextSectionTitleStyle extends StatelessWidget {
  final String _title;
  static const double _hPad = 16.0;
  static const double _wPad = 16.0;

  TextSectionTitleStyle(this._title);

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
              _title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )),
          ),
        ]);
  }
}
