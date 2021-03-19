import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/DimenConstants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class RawMaterialButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //RawMaterialButton basic use
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "RawMaterialButtonScreen",
        () => Get.back(),
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
          child: Text('RawMaterialButton'),
        ),
      ),
    );
  }
}
