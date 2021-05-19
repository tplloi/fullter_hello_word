import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/RotationRoute.dart';
import '../RouteTransitionScreen.dart';

class RotationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('RotationTransition'),
          onPressed: () =>
              Navigator.push(context, RotationRoute(page: Screen2())),
        ),
      ),
    );
  }
}
