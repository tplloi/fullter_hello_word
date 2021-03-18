import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/layout/LayoutBuilderScreen.dart';
import 'package:hello_word/base/widget/layout/LayoutSingleScreen.dart';

import 'customMultiChildLayout/CustomMultiChildLayoutScreen.dart';
import 'layoutMultipleScreen/LayoutMultipleScreen.dart';

class MenuLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuLayoutScreen",
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
              "CustomMultiChildLayoutScreen",
              () => {
                Get.to(CustomMultiChildLayoutScreen()),
              },
            ),
            UIUtils().getButton(
              "LayoutBuilderScreen",
              () => {
                Get.to(LayoutBuilderScreen()),
              },
            ),
            UIUtils().getButton(
              "LayoutMultipleScreen",
              () => {
                Get.to(LayoutMultipleScreen()),
              },
            ),
            UIUtils().getButton(
              "LayoutSingleScreen",
              () => {
                Get.to(LayoutSingleScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
