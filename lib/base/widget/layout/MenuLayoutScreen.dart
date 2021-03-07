import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/layout/LayoutBuilderScreen.dart';
import 'package:hello_word/base/widget/layout/LayoutSingleScreen.dart';

import 'customMultiChildLayout/CustomMultiChildLayoutScreen.dart';
import 'layoutMultipleScreen/LayoutMultipleScreen.dart';

class MenuLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuLayoutScreen",
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
              "CustomMultiChildLayoutScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomMultiChildLayoutScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "LayoutBuilderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutBuilderScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "LayoutMultipleScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutMultipleScreen()),
                )
              },
            ),
            UIUtils().getButton(
              "LayoutSingleScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutSingleScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
