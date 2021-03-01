import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class InkwellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "InkwellScreen - check logcat see event",
        () => Navigator.pop(context),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: InkWell(
          child: Image.network(Constants.dummy_image_link),
          onTap: () {
            print("onTap");
          },
          onDoubleTap: () {
            print("onDoubleTap");
          },
          onHover: (value) {
            print("onDoubleTap value " + value.toString());
          },
          onHighlightChanged: (value) {
            print("onHighlightChanged value " + value.toString());
          },
          onLongPress: () {
            print("onLongPress");
          },
          onTapCancel: () {
            print("onTapCancel");
          },
          onTapDown: (value) {
            print("onTapDown value " + value.toString());
          },
        ),
      ),
    );
  }
}
