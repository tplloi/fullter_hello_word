import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: AnimatedPaddingWidget(),
        ),
      ),
    );
  }
}

class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0;

  _changePadding() {
    paddingValue = Random().nextDouble() * 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 400,
          color: Colors.green,
          child: AnimatedPadding(
            padding: EdgeInsets.all(paddingValue),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.purple,
            ),
          ),
        ),
        RaisedButton(
          onPressed: _changePadding,
          child: Text('change padding'),
        ),
      ],
    );
  }
}
