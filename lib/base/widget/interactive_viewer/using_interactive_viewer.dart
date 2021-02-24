import 'package:flutter/material.dart';
import 'package:hello_word/base/const/constants.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class UsingInteractiveViewerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "UsingInteractiveViewerScreen",
        () => Navigator.pop(context),
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
