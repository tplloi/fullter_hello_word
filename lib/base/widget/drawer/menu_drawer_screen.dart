import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'drawer/drawer_screen.dart';
import 'navigation_drawer/navigation_drawer.dart';

class MenuDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuDrawerScreen",
          () => {
                Navigator.pop(context),
              }),
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
                  MaterialPageRoute(builder: (context) => NavigationDrawerScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
