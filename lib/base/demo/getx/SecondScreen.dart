import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/demo/getx/Controller.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class SecondScreen extends StatelessWidget {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "SecondScreen",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => UIUtils().getText("${controller.count}")),
            // UIUtils().getButton("Next Screen", () => null),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exposure_minus_1),
        onPressed: () => controller.minus(),
      ),
    );
  }
}
