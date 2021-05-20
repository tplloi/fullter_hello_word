import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/RotationRoute.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import '../RouteTransitionScreen.dart';

class RotationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("RotationTransition", () {
          Navigator.push(context, RotationRoute(page: Screen2()));
        }),
      ),
    );
  }
}
