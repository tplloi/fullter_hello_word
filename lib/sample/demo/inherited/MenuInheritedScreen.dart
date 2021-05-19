import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'InheritedModelScreen.dart';
import 'InheritedWidgetScreen.dart';

class MenuInheritedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
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
            UIUtils.getButton(
              "InheritedModelScreen",
              () => {
                Get.to(InheritedModelScreen()),
              },
            ),
            UIUtils.getButton(
              "InheritedWidgetScreen",
              () => {
                Get.to(InheritedWidgetScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
