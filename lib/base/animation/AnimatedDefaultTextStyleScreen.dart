import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class AnimatedDefaultTextStyleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "AnimatedDefaultTextStyleScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: AnimatedDefaultTextStyleWidget(),
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
