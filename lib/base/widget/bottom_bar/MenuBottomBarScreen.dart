import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'bottom_bar/BottomAppBarScreen.dart';
import 'tabBar/TabBarScreen.dart';
import 'tabBar2/TabBarScreen2.dart';

class MenuBottomBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuBottomBarScreen",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "BottomAppBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomAppBarScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "TabBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabBarScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "TabBarScreen2",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabBarScreen2()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
