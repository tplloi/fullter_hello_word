import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_word/base/demo/MenuDemoScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'base/animation/MenuAnimationScreen.dart';
import 'base/database/MenuDatabaseScreen.dart';
import 'base/demo/syntax/SyntaxScreen.dart';
import 'base/widget/MenuWidgetScreen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Main menu",
          () => {
                SystemNavigator.pop(),
              },
          null),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils().getButton(
            "Animation",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuAnimationScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuDatabaseScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuDatabaseScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "Demo",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuDemoScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "Syntax",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SyntaxScreen()),
              )
            },
          ),
          UIUtils().getButton(
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
    );
  }
}
