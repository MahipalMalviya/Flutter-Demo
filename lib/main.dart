import 'package:flutter/material.dart';

import './CounterText.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      home: _HomePage(),
      color: Colors.blue,
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

final _textList = const [
  'Hello Max',
  'you are good instructor',
  'I hope we will learn better from your course'
];

class _MyAppState extends State<_HomePage> {
  var _textCounter = 0;

  void _changeText() {
    setState(() {
      _textCounter = _textCounter + 1;
    });
    print(_textCounter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: _textCounter < _textList.length
            ? CounterText(_textList, _textCounter, _changeText)
            : Center(
                child: Text('You have reached maximum changed text'),
              ),
      ),
    );
  }
}
