import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'AvatarGlowScreen.dart';
import 'CacheNetworkImageScreen.dart';
import 'GradientScreen.dart';
import 'ImageScreen.dart';
import 'KenburnViewScreen.dart';

class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuImageScreen",
            () =>
        {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "AvatarGlowScreen",
                  () => {Get.to(AvatarGlowScreen())},
            ),
            UIUtils.getButton(
              "CacheNetworkImageScreen +++",
                  () => {Get.to(CacheNetworkImageScreen())},
            ),
            UIUtils.getButton(
              "GradientScreen",
                  () =>
              {
                Get.to(GradientScreen()),
              },
            ),
            UIUtils.getButton(
              "ImageScreen",
                  () =>
              {
                Get.to(ImageScreen()),
              },
            ),
            UIUtils.getButton(
              "KenburnsViewScreen",
                  () =>
              {
                Get.to(KenburnsViewScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
