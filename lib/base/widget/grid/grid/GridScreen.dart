import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/grid/grid/MyGridView.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "GridScreen",
        () => Get.back(),
        null,
      ),
      body: MyGridView().build(),
    );
  }
}
