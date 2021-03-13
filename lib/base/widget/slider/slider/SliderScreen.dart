import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/slider/slider/SliderThemeWidget.dart';
import 'package:hello_word/base/widget/slider/slider/SliderWidget.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "SliderScreen",
        () => Get.back(),
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(
              height: 100,
            ),
            SliderThemeWidget()
          ],
        ),
      ),
    );
  }
}
