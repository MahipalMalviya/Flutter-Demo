import 'package:flutter/material.dart';

import './ResultText.dart';

class CounterText extends StatelessWidget {
  final List<String> _textList;
  final int _textCounter;
  final Function _changeText;

  CounterText(this._textList,this._textCounter, this._changeText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResultText(_textList[_textCounter]),
        RaisedButton(
          onPressed: _changeText,
          color: Colors.blue,
          child: Text('Change Text'),
        )
      ],
    );
  }

}