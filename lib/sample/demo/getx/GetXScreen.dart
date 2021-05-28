import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/LogDogUtils.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'Controller.dart';
import 'SecondScreen.dart';

class GetXScreen extends GetWidget with WidgetsBindingObserver {
  final Controller _controller = Get.put(Controller());

  Widget _testListen() {
    Dog.d("==============testListen " + _controller.text.value);
    return Obx(() {
      Dog.d(">>>>>>>testListen count " + _controller.count.value.toString());
      Dog.d(">>>>>>>testListen text " + _controller.text.value);
      return Text(_controller.text.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    _testListen();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GetXScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => UIUtils.getText("${_controller.count}")),
            UIUtils.getButton("Next Screen", () => Get.to(SecondScreen())),
            _testListen(),
            UIUtils.getButton("Set count = 69", () {
              _controller.setCount(69);
            }),
            UIUtils.getButton("Pop this screen and reset all value", () {
              _controller.clearAllValue();
              Get.back();
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          _controller.increment(),
          _controller
              .updateText(DateTime.now().millisecondsSinceEpoch.toString()),
        },
      ),
    );
  }
}
