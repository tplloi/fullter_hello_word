import 'package:flutter/material.dart';
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
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "CupertinoActionSheetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoActionSheetScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CupertinoSegmentedControlScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoSegmentedControlScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CupertinoTimerPickerScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CupertinoTimerPickerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
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
