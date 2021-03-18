import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'range/RangeSliderScreen.dart';
import 'slider/SliderScreen.dart';

class MenuSliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
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
            UIUtils().getButton(
              "RangeSliderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RangeSliderScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "SliderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
