import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/pdf/ViewPDFFileScreen.dart';
import 'package:hello_word/base/demo/shop/ShopScreen.dart';
import 'package:hello_word/base/demo/theme/ThemeScreen.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'async/MenuAsyncScreen.dart';
import 'bloc/ui/CategoriesScreen.dart';
import 'communicationBetweenWidget/CommunicationBetweenWidgetScreen.dart';
import 'counter/CounterScreen.dart';
import 'crypto/CryptoScreen.dart';
import 'inherited/MenuInheritedScreen.dart';
import 'loadLocalJson/LoadLocalJsonScreen.dart';
import 'network/GetHttpDataScreen.dart';
import 'scopedModel/counterScreen/ScopedModelCounterScreen.dart';
import 'tipCalculator/TipCalculatorScreen.dart';
import 'urlLauncher/UrlLauncherScreen.dart';

class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "Demo menu",
        () => {
          Navigator.pop(context),
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getButton(
              "Async",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuAsyncScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Block Demo Chuck Norris",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "CommunicationBetweenWidgetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommunicationBetweenWidgetScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Counter",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "CryptoScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CryptoScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Inherited",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuInheritedScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Load Local Json",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoadLocalJsonScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "GetHttpDataScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetHttpDataScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "PDF",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewPDFFileScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "ScopedModelCounterScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScopedModelCounterScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Shop",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Theme",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "Tip calculator",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TipCalculatorScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "UrlLauncherScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UrlLauncherScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
