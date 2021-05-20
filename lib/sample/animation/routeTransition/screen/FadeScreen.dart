import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/FadeRoute.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import '../RouteTransitionScreen.dart';

class FadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("FadeTransition", () {
          Navigator.push(context, FadeRoute(page: Screen2()));
        }),
      ),
    );
  }
}
