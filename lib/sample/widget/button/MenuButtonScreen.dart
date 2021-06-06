import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'BackButtonScreen.dart';
import 'ButtonBarScreen.dart';
import 'DropDownScreen.dart';
import 'IconButtonScreen.dart';
import 'OutlineButtonScreen.dart';
import 'PopupMenuButtonScreen.dart';
import 'RaisedButtonScreen.dart';
import 'RawMaterialButtonScreen.dart';
import 'TextButtonScreen.dart';
import 'ToggleButtonScreen.dart';

class MenuButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "BackButtonScreen",
              () {
                Get.to(BackButtonScreen());
              },
            ),
            UIUtils.getButton(
              "ButtonBarScreen",
              () {
                Get.to(ButtonBarScreen());
              },
            ),
            UIUtils.getButton(
              "DropDownScreen",
              () {
                Get.to(DropDownScreen());
              },
            ),
            UIUtils.getButton(
              "IconButtonScreen",
              () {
                Get.to(IconButtonScreen());
              },
            ),
            UIUtils.getButton(
              "OutlineButtonScreen",
              () {
                Get.to(OutlineButtonScreen());
              },
            ),
            UIUtils.getButton(
              "PopupMenuButtonScreen",
              () {
                Get.to(PopupMenuButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RaisedButtonScreen",
              () {
                Get.to(RaisedButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RawMaterialButtonScreen",
              () {
                Get.to(RawMaterialButtonScreen());
              },
            ),
            UIUtils.getButton(
              "TextButtonScreen +++",
              () {
                Get.to(TextButtonScreen());
              },
            ),
            UIUtils.getButton(
              "ToggleButtonScreen",
              () {
                Get.to(ToggleButtonScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
