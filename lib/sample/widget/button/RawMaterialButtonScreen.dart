import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class RawMaterialButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RawMaterialButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: RawMaterialButton(
          padding: EdgeInsets.fromLTRB(
            DimenConstants.marginPaddingMedium,
            0,
            DimenConstants.marginPaddingMedium,
            0,
          ),
          onPressed: () {},
          child: UIUtils.getText("RawMaterialButton"),
        ),
      ),
    );
  }
}
