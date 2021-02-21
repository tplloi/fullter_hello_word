import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'back_button_screen.dart';
import 'button_bar.dart';
import 'drop_down_button.dart';

class MenuButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuButtonScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "BackButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BackButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ButtonBarScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DropDownScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DropDownScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
