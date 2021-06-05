import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UrlLauncherUtils.dart';

import 'lib/util/UIUtils.dart';
import 'sample/animation/MenuAnimationScreen.dart';
import 'sample/database/MenuDatabaseScreen.dart';
import 'sample/demo/MenuDemoScreen.dart';
import 'sample/demo/syntax/SyntaxScreen.dart';
import 'sample/widget/menu_widget_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Main menu",
        () {
          SystemNavigator.pop();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "Animation",
            () {
              Get.to(MenuAnimationScreen());
            },
          ),
          UIUtils.getButton(
            "MenuDatabaseScreen",
            () {
              Get.to(MenuDatabaseScreen());
            },
          ),
          UIUtils.getButton(
            "Demo",
            () {
              Get.to(MenuDemoScreen());
            },
          ),
          UIUtils.getButton(
            "Syntax",
            () {
              Get.to(SyntaxScreen());
            },
          ),
          UIUtils.getButton(
            "Widget",
            () {
              Get.to(MenuWidgetScreen());
            },
          ),
          UIUtils.getButton(
            "Github",
            () {
              UrlLauncherUtils.launchInBrowser(
                  "https://github.com/tplloi/fullter_hello_word");
            },
          ),
          UIUtils.getButton(
            "More app",
            () {
              UrlLauncherUtils.launchInBrowser(
                  "https://play.google.com/store/apps/dev?id=6295678835392563583");
            },
          ),
          UIUtils.getButton(
            "Policy",
            () {
              UrlLauncherUtils.launchInBrowser(
                  "https://loitp.wordpress.com/2018/06/10/dieu-khoan-su-dung-chinh-sach-bao-mat-va-quyen-rieng-tu/");
            },
          ),
        ],
      ),
    );
  }
}
