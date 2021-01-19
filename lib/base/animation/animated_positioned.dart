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
          child: AnimatedPositionedWidget(),
        ),
      ),
    );
  }
}

class AnimatedPositionedWidget extends StatefulWidget {
  @override
  _AnimatedPositionedWidgetState createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool status = true;

  double left = 30;
  double top = 30;
  double right = 30;
  double bottom = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                left: left,
                top: top,
                right: right,
                bottom: bottom,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          child: Text('Change position'),
          onPressed: () => setState(() {
            left = status ? 10 : 50;
            top = status ? 20 : 40;
            right = status ? 20 : 40;
            bottom = status ? 20 : 70;
            status = !status;
          }),
        ),
      ],
    );
  }
}
