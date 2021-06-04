import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class BackButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "BackButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: DimenConstants.marginPaddingMedium),
            BackButton(color: Colors.red),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            CloseButton(),
          ],
        ),
      ),
    );
  }
}
