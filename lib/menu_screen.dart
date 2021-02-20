import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/demo/menu_demo_screen.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'base/animation/menu_animation_screen.dart';
import 'base/widget/menu_widget_screen.dart';
import 'file:///D:/Project/Flutter/fullter_hello_word/lib/base/syntax/syntax_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Main menu",
          () => {
                SystemNavigator.pop(),
              }),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Animation",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuAnimationScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Demo",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuDemoScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Syntax",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SyntaxScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Widget",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuWidgetScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
