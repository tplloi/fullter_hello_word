import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'CupertinoActionSheetScreen.dart';
import 'CupertinoSegmentedControlScreen.dart';
import 'CupertinoTimerPickerScreen.dart';
import 'CupertinoWidgetScreen.dart';

class MenuCupertinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
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
            UIUtils().getButton(
              "CupertinoActionSheetScreen",
              () => {
                Get.to(CupertinoActionSheetScreen()),
              },
            ),
            UIUtils().getButton(
              "CupertinoSegmentedControlScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoSegmentedControlScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "CupertinoTimerPickerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoTimerPickerScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "CupertinoWidgetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoWidgetScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
