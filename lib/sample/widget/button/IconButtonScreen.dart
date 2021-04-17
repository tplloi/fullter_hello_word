import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

/// This is the stateless widget that the main application instantiates.
class IconButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "IconButtonScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: Container(
          child: Ink(
            decoration: ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.android),
              color: Colors.white,
              onPressed: () {
                print("You Pressed the icon!");
              },
            ),
          ),
        ),
      ),
    );
  }
}