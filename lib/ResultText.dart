import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final String _resultText;

  ResultText(this._resultText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _resultText,
        style: TextStyle(color: Colors.greenAccent, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
