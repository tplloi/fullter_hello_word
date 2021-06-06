import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:hello_word/sample/demo/communication_between_widget/communication_between_widget_screen.dart';
import 'package:hello_word/sample/demo/easy_debounce/easy_debounce_screen.dart';
import 'package:hello_word/sample/demo/focus_detector/focus_detector_screen.dart';
import 'package:hello_word/sample/demo/load_local_json/load_local_json_screen.dart';
import 'package:hello_word/sample/demo/shop/ShopScreen.dart';
import 'package:hello_word/sample/demo/tip_calculator/tip_calculator_screen.dart';
import 'package:hello_word/sample/demo/url_launcher/url_launcher_screen.dart';

import 'async/MenuAsyncScreen.dart';
import 'counter/CounterScreen.dart';
import 'crypto/crypto_screen.dart';
import 'encypt/EncryptScreen.dart';
import 'getx/GetXScreen.dart';
import 'inherited/MenuInheritedScreen.dart';
import 'theme/ThemeScreen.dart';

class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Demo menu",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "Async",
            () {
              Get.to(MenuAsyncScreen());
            },
          ),
          UIUtils.getButton(
            "CommunicationBetweenWidgetScreen",
            () {
              Get.to(CommunicationBetweenWidgetScreen());
            },
          ),
          UIUtils.getButton(
            "Counter",
            () {
              Get.to(CounterScreen());
            },
          ),
          UIUtils.getButton(
            "CryptoScreen",
            () {
              Get.to(CryptoScreen());
            },
          ),
          UIUtils.getButton(
            "EasyDebounceScreen",
            () {
              Get.to(EasyDebounceScreen());
            },
          ),
          UIUtils.getButton(
            "EncryptScreen",
                () {
              Get.to(EncryptScreen());
            },
          ),
          UIUtils.getButton(
            "FocusDetectorScreen",
            () {
              Get.to(FocusDetectorScreen());
            },
          ),
          UIUtils.getButton(
            "GetXScreen",
            () {
              Get.to(GetXScreen());
            },
          ),
          UIUtils.getButton(
            "Inherited",
            () {
              Get.to(MenuInheritedScreen());
            },
          ),
          UIUtils.getButton(
            "Load Local Json",
            () {
              Get.to(LoadLocalJsonScreen());
            },
          ),
          UIUtils.getButton(
            "Shop",
            () {
              Get.to(ShopScreen());
            },
          ),
          UIUtils.getButton(
            "Theme",
            () {
              Get.to(ThemeScreen());
            },
          ),
          UIUtils.getButton(
            "Tip calculator",
            () {
              Get.to(TipCalculatorScreen());
            },
          ),
          UIUtils.getButton(
            "UrlLauncherScreen",
            () {
              Get.to(UrlLauncherScreen());
            },
          ),
        ],
      ),
    );
  }
}
