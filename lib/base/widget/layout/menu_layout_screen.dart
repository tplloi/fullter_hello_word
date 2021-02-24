import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'file:///D:/LoitppFlutter/hello_word/lib/base/widget/layout/custom_multi_child_layout/custom_multi_child_layout.dart';
import 'package:hello_word/base/widget/layout/layout_builder_screen.dart';

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

          ],
        ),
      ),
    );
  }
}
