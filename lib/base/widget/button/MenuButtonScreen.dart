import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/button/PopupMenuButtonScreen.dart';
import 'package:hello_word/base/widget/button/RaisedButtonScreen.dart';
import 'package:hello_word/base/widget/button/RawMaterialButtonScreen.dart';
import 'package:hello_word/base/widget/button/ToggleButtonScreen.dart';

import 'BackButtonScreen.dart';
import 'ButtonBarScreen.dart';
import 'DropDownScreen.dart';
import 'TextButtonScreen.dart';
import 'IconButtonScreen.dart';
import 'OutlineButtonScreen.dart';

class MenuButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuButtonScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "BackButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BackButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ButtonBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonBarScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "DropDownScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DropDownScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "IconButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "OutlineButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OutlineButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "PopupMenuButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PopupMenuButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "RaisedButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RaisedButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "RawMaterialButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RawMaterialButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "TextButtonScreen +++",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextButtonScreen()),
                )
              },
            ),
            UIUtils().getButton(
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
