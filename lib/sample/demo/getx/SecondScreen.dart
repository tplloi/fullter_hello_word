import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'Controller.dart';

class SecondScreen extends StatelessWidget {
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "SecondScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                UIUtils.getText("${_controller.count} ~~~ ${_controller.text}")),
            // UIUtils().getButton("Next Screen", () => null),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exposure_minus_1),
        onPressed: () => _controller.minus(),
      ),
    );
  }
}