import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class UsingInteractiveViewerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "UsingInteractiveViewerScreen",
        () => Get.back(),
        null,
      ),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(300.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: Center(
          child: getImageWidget(),
        ),
      ),
    );
  }

  Widget getImageWidget() {
    return Image.network(Constants.dummy_image_link);
  }
}
