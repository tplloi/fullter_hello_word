import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/pdf/ViewPDFFileScreen.dart';
import 'package:hello_word/base/demo/shop/ShopScreen.dart';
import 'package:hello_word/base/demo/theme/ThemeScreen.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'async/MenuAsyncScreen.dart';
import 'bloc/ui/CategoriesScreen.dart';
import 'counter/CounterScreen.dart';
import 'inherited/MenuInheritedScreen.dart';
import 'loadLocalJson/LoadLocalJsonScreen.dart';
import 'network/GetHttpDataScreen.dart';
import 'tipCalculator/TipCalculatorScreen.dart';

class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "Demo menu",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "Async",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuAsyncScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Block Demo Chuck Norris",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Counter",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Inherited",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuInheritedScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Load Local Json",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoadLocalJsonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "GetHttpDataScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetHttpDataScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "PDF",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewPDFFileScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Shop",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Theme",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Tip calculator",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TipCalculatorScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
