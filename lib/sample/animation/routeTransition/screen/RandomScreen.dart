import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/EnterExitRoute.dart';
import 'package:hello_word/lib/animation/routeTransition/ScaleRoute.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import '../RouteTransitionScreen.dart';

class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            UIUtils.getButton("EnterExitSlideTransition", () {
              Navigator.push(context,
                  EnterExitRoute(exitPage: this, enterPage: Screen2()));
            }),
            UIUtils.getButton("ScaleRotateTransition", () {
              Navigator.push(context, ScaleRoute(page: Screen2()));
            }),
          ],
        ),
      ),
    );
  }
}
