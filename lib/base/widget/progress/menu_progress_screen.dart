import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'linear_progress_indicator.dart';
import 'progress_indicator_screen.dart';

class MenuProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuProgressScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "LinearProgressIndicatorApp",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LinearProgressIndicatorApp()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ProgressIndicatorScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProgressIndicatorScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
