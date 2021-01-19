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
          child: AnimatedOpacityWidget(),
        ),
      ),
    );
  }
}

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacity = 1.0;

  _changeOpacity() {
    setState(() => opacity = opacity == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.grey.shade200,
          child: AnimatedOpacity(
            opacity: opacity,
            duration: Duration(seconds: 1),
            child: FlutterLogo(),
          ),
        ),
        RaisedButton(
          child: Text('Change Opacity'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
