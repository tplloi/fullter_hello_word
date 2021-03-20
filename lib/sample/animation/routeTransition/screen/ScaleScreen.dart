import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/ScaleRoute.dart';
import '../RouteTransitionScreen.dart';

class ScaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('ScaleTransition'),
          onPressed: () => Navigator.push(
            context,
            ScaleRoute(page: Screen2()),
          ),
        ),
      ),
    );
  }
}
