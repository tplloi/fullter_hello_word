import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'CircularProgressIndicatorApp.dart';
import 'LinearProgressIndicatorApp.dart';
import 'ProgressIndicatorScreen.dart';

class MenuProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuProgressScreen",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "CircularProgressIndicatorApp",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CircularProgressIndicatorApp()),
                )
              },
            ),
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
