import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

import 'drawer/DrawerScreen.dart';
import 'navigationDrawer/NavigationDrawerScreen.dart';

class MenuDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuDrawerScreen",
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
              "DrawerScreen",
              () {
                Get.to(DrawerScreen());
              },
            ),
            UIUtils.getButton(
              "NavigationDrawerScreen",
              () {
                Get.to(NavigationDrawerScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
