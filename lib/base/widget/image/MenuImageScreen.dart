import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/image/GradientScreen.dart';
import 'package:hello_word/base/widget/image/ImageScreen.dart';

import 'CacheNetworkImageScreen.dart';

class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuImageScreen",
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
              "CacheNetworkImageScreen +++",
              () => {
                Get.to(CacheNetworkImageScreen())
              },
            ),
            UIUtils().getButton(
              "GradientScreen",
                  () => {
                Get.to(GradientScreen()),
              },
            ),
            UIUtils().getButton(
              "ImageScreen",
              () => {
                Get.to(ImageScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
