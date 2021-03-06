import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'screen/RotationScreen.dart';
import 'screen/ScaleScreen.dart';
import 'screen/SizeScreen.dart';
import 'screen/SlideScreen.dart';
import 'screen/FadeScreen.dart';
import 'screen/RandomScreen.dart';

//https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
class RouteTransitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RouteTransitionScreen",
        () => Navigator.pop(context),
        null,
      ),
      body: Center(
        child: Screen1(),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'FadeTransition': FadeScreen(),
    'Random': RandomScreen(),
    'RotationTransition': RotationScreen(),
    'ScaleTransition': ScaleScreen(),
    'SizeTransition': SizeScreen(),
    'SlideTransition': SlideScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons(context),
          ),
        ),
      ),
    );
  }

  List<RaisedButton> buttons(context) {
    List<RaisedButton> buttons = [];
    screens.forEach(
      (k, v) => buttons.add(
        RaisedButton(
          child: Text(k),
          onPressed: () => Navigator.push(
              context, CupertinoPageRoute(builder: (context) => v)),
        ),
      ),
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
