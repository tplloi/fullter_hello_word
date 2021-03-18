import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/demo/MenuDemoScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'base/animation/MenuAnimationScreen.dart';
import 'base/database/MenuDatabaseScreen.dart';
import 'base/demo/syntax/SyntaxScreen.dart';
import 'base/widget/MenuWidgetScreen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Main menu",
          () => {
                SystemNavigator.pop(),
              },
          null),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils().getButton(
            "Animation",
            () => {
              Get.to(MenuAnimationScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuDatabaseScreen",
            () => {
              Get.to(MenuDatabaseScreen()),
            },
          ),
          UIUtils().getButton(
            "Demo",
            () => {
              Get.to(MenuDemoScreen()),
            },
          ),
          UIUtils().getButton(
            "Syntax",
            () => {
              Get.to(SyntaxScreen()),
            },
          ),
          UIUtils().getButton(
            "Widget",
            () => {
              Get.to(MenuWidgetScreen()),
            },
          ),
        ],
      ),
    );
  }
}
