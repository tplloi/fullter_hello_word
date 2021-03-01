import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/button/PopupMenuButtonScreen.dart';
import 'package:hello_word/base/widget/button/RaisedButtonScreen.dart';
import 'package:hello_word/base/widget/button/RawMaterialButtonScreen.dart';
import 'package:hello_word/base/widget/button/ToggleButtonScreen.dart';

import 'BackButtonScreen.dart';
import 'ButtonBarScreen.dart';
import 'DropDownScreen.dart';
import 'FlatButtonScreen.dart';
import 'IconButtonScreen.dart';
import 'OutlineButtonScreen.dart';

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
            UIUtils().getRaisedButton(
              "FlatButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlatButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "IconButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "OutlineButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OutlineButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "PopupMenuButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PopupMenuButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RaisedButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RaisedButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RawMaterialButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RawMaterialButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ToggleButtonScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToggleButtonScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}