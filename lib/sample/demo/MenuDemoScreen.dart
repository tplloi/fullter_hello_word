import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:hello_word/sample/demo/pdf/ViewPDFFileScreen.dart';
import 'package:hello_word/sample/demo/shop/ShopScreen.dart';

import 'async/MenuAsyncScreen.dart';
import 'bloc/ui/CategoriesScreen.dart';
import 'communicationBetweenWidget/CommunicationBetweenWidgetScreen.dart';
import 'counter/CounterScreen.dart';
import 'crypto/CryptoScreen.dart';
import 'encypt/EncryptScreen.dart';
import 'focusDetector/FocusDetectorScreen.dart';
import 'getx/GetXScreen.dart';
import 'inherited/MenuInheritedScreen.dart';
import 'loadLocalJson/LoadLocalJsonScreen.dart';
import 'network/GetHttpDataScreen.dart';
import 'scopedModel/counterScreen/ScopedModelCounterScreen.dart';
import 'theme/ThemeScreen.dart';
import 'tipCalculator/TipCalculatorScreen.dart';
import 'urlLauncher/UrlLauncherScreen.dart';

class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIUtils.getAppBar(
          "Demo menu",
          () => {
            Get.back(),
          },
          null,
        ),
        body: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "Async",
              () => {
                Get.to(MenuAsyncScreen()),
              },
            ),
            UIUtils.getButton(
              "Block Demo Chuck Norris",
              () => {
                Get.to(CategoriesScreen()),
              },
            ),
            UIUtils.getButton(
              "CommunicationBetweenWidgetScreen",
              () => {
                Get.to(CommunicationBetweenWidgetScreen()),
              },
            ),
            UIUtils.getButton(
              "Counter",
              () => {
                Get.to(CounterScreen()),
              },
            ),
            UIUtils.getButton(
              "CryptoScreen",
              () => {
                Get.to(CryptoScreen()),
              },
            ),
            UIUtils.getButton(
              "EncryptScreen",
              () => {
                Get.to(EncryptScreen()),
              },
            ),
            UIUtils.getButton(
              "FocusDetectorScreen",
              () => {
                Get.to(FocusDetectorScreen()),
              },
            ),
            UIUtils.getButton(
              "GetXScreen",
              () => {
                Get.to(GetXScreen()),
              },
            ),
            UIUtils.getButton(
              "Inherited",
              () => {
                Get.to(MenuInheritedScreen()),
              },
            ),
            UIUtils.getButton(
              "Load Local Json",
              () => {
                Get.to(LoadLocalJsonScreen()),
              },
            ),
            UIUtils.getButton(
              "GetHttpDataScreen",
              () => {
                Get.to(GetHttpDataScreen()),
              },
            ),
            UIUtils.getButton(
              "PDF",
              () => {
                Get.to(ViewPDFFileScreen()),
              },
            ),
            UIUtils.getButton(
              "ScopedModelCounterScreen",
              () => {
                Get.to(ScopedModelCounterScreen()),
              },
            ),
            UIUtils.getButton(
              "Shop",
              () => {
                Get.to(ShopScreen()),
              },
            ),
            UIUtils.getButton(
              "Theme",
              () => {
                Get.to(ThemeScreen()),
              },
            ),
            UIUtils.getButton(
              "Tip calculator",
              () => {
                Get.to(TipCalculatorScreen()),
              },
            ),
            UIUtils.getButton(
              "UrlLauncherScreen",
              () => {
                Get.to(UrlLauncherScreen()),
              },
            ),
          ],
        ));
  }
}
