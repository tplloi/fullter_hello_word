import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import '1/Expansion1Screen.dart';
import '2/expansion_panel_2.dart';

class MenuExpansionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuExpansionScreen",
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
              "Expansion1Screen",
              () => {
                Get.to(Expansion1Screen()),
              },
            ),
            UIUtils().getButton(
              "ExpansionPanelScreen2",
              () => {
                Get.to(ExpansionPanelScreen2()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
