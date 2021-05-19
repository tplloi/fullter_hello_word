import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'FutureBuilderScreen.dart';
import 'StreamBuilderScreen.dart';
import 'ValueListenableBuilderScreen.dart';

class MenuAsyncScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Demo async",
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
              "FutureBuilderScreen",
              () => {
                Get.to(FutureBuilderScreen()),
              },
            ),
            UIUtils.getButton(
              "StreamBuilderScreen",
              () => {
                Get.to(StreamBuilderScreen()),
              },
            ),
            UIUtils.getButton(
              "ValueListenableBuilderScreen",
              () => {
                Get.to(ValueListenableBuilderScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
