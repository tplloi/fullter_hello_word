import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'drawer/DrawerScreen.dart';
import 'navigation_drawer/NavigationDrawerScreen.dart';

class MenuDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuDrawerScreen",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "DrawerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrawerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "NavigationDrawerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavigationDrawerScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
