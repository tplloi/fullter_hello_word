import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class GradientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GradientScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Container(
        // Center the content
        child: Center(
          // Add Text
          child: Text(
            "Hello World!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // Set background
        decoration: BoxDecoration(
          // Add Gradient
          gradient: UIUtils.getCustomGradient(),
        ),
      ),
    );
  }
}
