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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CacheNetworkImageScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "GradientScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GradientScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ImageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
