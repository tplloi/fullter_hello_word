import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/demo/MenuDemoScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'base/animation/MenuAnimationScreen.dart';
import 'base/database/MenuDatabaseScreen.dart';
import 'base/demo/syntax/SyntaxScreen.dart';
import 'base/widget/menu_widget_screen.dart';

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
              "MenuDatabaseScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuDatabaseScreen()),
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
