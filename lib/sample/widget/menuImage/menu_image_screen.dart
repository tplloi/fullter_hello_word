import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'avatar_glow_screen.dart';
import 'cache_network_image_screen.dart';
import 'gradient_screen.dart';
import 'image_screen.dart';

class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuImageScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "AvatarGlowScreen",
              () {
                Get.to(AvatarGlowScreen());
              },
            ),
            UIUtils.getButton(
              "CacheNetworkImageScreen +++",
              () {
                Get.to(CacheNetworkImageScreen());
              },
            ),
            UIUtils.getButton(
              "GradientScreen",
              () {
                Get.to(GradientScreen());
              },
            ),
            UIUtils.getButton(
              "ImageScreen",
              () {
                Get.to(ImageScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
