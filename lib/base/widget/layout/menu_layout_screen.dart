import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/layout/custom_multi_child_layout/custom_multi_child_layout.dart';
import 'package:hello_word/base/widget/layout/layout_builder_screen.dart';
import 'package:hello_word/base/widget/layout/layout_multiple_screen/layout_mutiple_screen.dart';
import 'package:hello_word/base/widget/layout/layout_single_screen.dart';

class MenuLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuLayoutScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "CustomMultiChildLayoutScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomMultiChildLayoutScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "LayoutBuilderScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutBuilderScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "LayoutMultipleScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutMultipleScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "LayoutSingleScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LayoutSingleScreen()),
                )
              },
            ),

          ],
        ),
      ),
    );
  }
}
