import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'bottomBar/BottomAppBarScreen.dart';
import 'tabBar/TabBarScreen.dart';
import 'tabBar2/TabBarScreen2.dart';

class MenuBottomBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuBottomBarScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "BottomAppBarScreen",
              () {
                Get.to(BottomAppBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen",
              () {
                Get.to(TabBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen2",
              () {
                Get.to(TabBarScreen2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
