import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'CupertinoActionSheetScreen.dart';
import 'CupertinoSegmentedControlScreen.dart';
import 'CupertinoTimerPickerScreen.dart';
import 'CupertinoWidgetScreen.dart';

class MenuCupertinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuCupertinoScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "CupertinoActionSheetScreen",
              () => {
                Get.to(CupertinoActionSheetScreen()),
              },
            ),
            UIUtils.getButton(
              "CupertinoSegmentedControlScreen",
              () => {
                Get.to(CupertinoSegmentedControlScreen()),
              },
            ),
            UIUtils.getButton(
              "CupertinoTimerPickerScreen",
              () => {
                Get.to(CupertinoTimerPickerScreen()),
              },
            ),
            UIUtils.getButton(
              "CupertinoWidgetScreen",
              () => {
                Get.to(CupertinoWidgetScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
