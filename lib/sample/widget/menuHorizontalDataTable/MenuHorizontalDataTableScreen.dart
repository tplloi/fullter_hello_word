import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'advance/BookingView.dart';
import 'simple/HorizontalDataTableScreen.dart';

class MenuHorizontalDataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuHorizontalDataTableScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "BookingView",
            () => {
              Get.to(BookingView()),
            },
          ),
          UIUtils.getButton(
            "HorizontalDataTableScreen",
            () => {
              Get.to(HorizontalDataTableScreen()),
            },
          ),
        ],
      ),
    );
  }
}