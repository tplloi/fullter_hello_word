import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/demo/advance_pdf_viewer/advance_pdf_viewer_screen.dart';
import 'package:hello_word/sample/demo/communication_between_widget/communication_between_widget_screen.dart';
import 'package:hello_word/sample/demo/device_info_plus/device_info_plus_screen.dart';
import 'package:hello_word/sample/demo/easy_debounce/easy_debounce_screen.dart';
import 'package:hello_word/sample/demo/focus_detector/focus_detector_screen.dart';
import 'package:hello_word/sample/demo/load_local_json/load_local_json_screen.dart';
import 'package:hello_word/sample/demo/shop/shop_screen.dart';
import 'package:hello_word/sample/demo/tip_calculator/tip_calculator_screen.dart';
import 'package:hello_word/sample/demo/url_launcher/url_launcher_screen.dart';

import 'async/menu_async_screen.dart';
import 'counter/counter_screen.dart';
import 'crypto/crypto_screen.dart';
import 'encypt/encrypt_screen.dart';
import 'getx/getx_screen.dart';
import 'inherited/menu_inherited_screen.dart';
import 'theme/theme_screen.dart';

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
            "AdvancePDFViewerScreen",
            () {
              Get.to(AdvancePDFViewerScreen());
            },
          ),
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
            "DeviceInfoPlusScreen",
            () {
              Get.to(DeviceInfoPlusScreen());
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
