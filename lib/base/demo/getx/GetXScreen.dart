import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/demo/getx/Controller.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'SecondScreen.dart';

class GetXScreen extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GetXScreen",
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
            UIUtils().getButton("Next Screen", () => Get.to(SecondScreen())),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          controller.increment(),
          controller.updateText(DateTime.now().millisecondsSinceEpoch.toString()),
        },
      ),
    );
  }
}
