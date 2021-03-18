import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "CircularProgressIndicatorApp",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CircularProgressIndicatorApp()),
                )
              },
            ),
            UIUtils().getButton(
              "LinearProgressIndicatorApp",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LinearProgressIndicatorApp()),
                )
              },
            ),
            UIUtils().getButton(
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
