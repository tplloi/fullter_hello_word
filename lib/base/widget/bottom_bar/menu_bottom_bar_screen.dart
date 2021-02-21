import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

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
          ],
        ),
      ),
    );
  }
}
