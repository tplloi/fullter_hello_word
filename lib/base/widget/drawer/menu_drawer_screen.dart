import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'navigation_drawer.dart';

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
