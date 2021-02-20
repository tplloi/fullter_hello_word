import 'package:flutter/material.dart';
import 'package:hello_word/base/demo/pdf/view_pdf_file_screen.dart';
import 'package:hello_word/base/demo/shop/demo_shop.dart';
import 'package:hello_word/base/demo/theme/theme.dart';
import 'package:hello_word/base/demo/tip_calculator/tip_calculator.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import 'counter/counter.dart';
import 'load_local_json/load_local_json.dart';

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
              "Counter",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "Load Local Json",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadLocalJsonScreen()),
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
