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
          child: RotationTransitionWidget(),
        ),
      ),
    );
  }
}

class RotationTransitionWidget extends StatefulWidget {
  @override
  _RotationTransitionWidgetState createState() =>
      _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );
  AnimationController controller;
  bool status = true;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotationTransition(
          turns: turnsTween.animate(controller),
          child: Container(
            color: Colors.purple[300],
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            child: FlutterLogo(),
          ),
        ),
        RaisedButton(
          onPressed: () {
            status ? controller.forward() : controller.reverse();
            status = !status;
          },
          child: Text("Change Rotation"),
        )
      ],
    );
  }
}
