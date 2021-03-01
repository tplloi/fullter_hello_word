import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/bottom_bar/tab_bar/tab_bar_view.dart';
import 'package:hello_word/base/widget/bottom_bar/tab_bar_2/tabbar_2_screen.dart';

import 'bottom_bar/bottom_app_bar.dart';

class MenuBottomBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuBottomBarScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "BottomAppBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomAppBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "TabBarScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
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
