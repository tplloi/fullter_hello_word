
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
          child: AnimatedDefaultTextStyleWidget(),
        ),
      ),
    );
  }
}

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleWidgetState createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {

  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Text('Flutter'),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.orange;
              _first = !_first;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
