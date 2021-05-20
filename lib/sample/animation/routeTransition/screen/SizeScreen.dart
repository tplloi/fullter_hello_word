import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/routeTransition/SizeRoute.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import '../RouteTransitionScreen.dart';

class SizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("SizeTransition", () {
          Navigator.push(context, SizeRoute(page: Screen2()));
        }),
      ),
    );
  }
}
