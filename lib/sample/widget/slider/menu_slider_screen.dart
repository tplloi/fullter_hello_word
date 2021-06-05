import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'range/range_slider_screen.dart';
import 'slider/slider_screen.dart';

class MenuSliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuSliderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "RangeSliderScreen",
              () {
                Get.to(RangeSliderScreen());
              },
            ),
            UIUtils.getButton(
              "SliderScreen",
              () {
                Get.to(SliderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}