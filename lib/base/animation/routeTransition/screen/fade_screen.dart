import 'package:flutter/material.dart';
import 'package:hello_word/base/animation/routeTransition/transitions/FadeRoute.dart';

import '../RouteTransitionScreen.dart';

class FadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('FadeTansition'),
          onPressed: () => Navigator.push(context, FadeRoute(page: Screen2())),
        ),
      ),
    );
  }
}
