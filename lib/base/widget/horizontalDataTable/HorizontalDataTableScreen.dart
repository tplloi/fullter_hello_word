import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

//https://pub.dev/packages/horizontal_data_table
class HorizontalDataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "HorizontalDataTableScreen",
        () => Get.back(),
        null,
      ),
      body: Container(),
    );
  }
}
