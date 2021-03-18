import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'InheritedModelScreen.dart';
import 'InheritedWidgetScreen.dart';

class MenuInheritedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Menu inherited",
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
              "InheritedModelScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InheritedModelScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "InheritedWidgetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InheritedWidgetScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
