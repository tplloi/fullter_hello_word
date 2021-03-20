import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'range/RangeSliderScreen.dart';
import 'slider/SliderScreen.dart';

class MenuSliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuSliderScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "RangeSliderScreen",
              () => {
                Get.to(RangeSliderScreen()),
              },
            ),
            UIUtils.getButton(
              "SliderScreen",
              () => {
                Get.to(SliderScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
